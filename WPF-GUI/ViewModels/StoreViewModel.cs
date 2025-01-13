using System.Collections.ObjectModel;
using WPF_GUI.Commands;
using WPF_GUI.Models;
using WPF_GUI.Models.Entities;
using WPF_GUI.Services;

namespace WPF_GUI.ViewModels
{
    internal class StoreViewModel : ViewModelBase
    {
        //private readonly MainWindowViewModel? mainWVM;
        public IDialogService DialogService { get; }

        public ObservableCollection<Store> Stores { get; private set; }
        public ObservableCollection<Book> Books { get; private set; }
        public Store? SelectedStore
        {
            get;
            set
            {
                field = value;
                GetInventory();
                RaisePropertyChanged("CurrentStock");
            }
        }
        public Book? SelectedBook
        {
            get;
            set
            {
                field = value;
                RaisePropertyChanged();
                RaisePropertyChanged("CurrentStock");
            }
        }

        public bool OrderBooks
        {
            get;
            set
            {
                field = value;
                if (!value)
                {
                    AddAmount = CurrentStock;
                    RaisePropertyChanged("AddAmount");
                }
                RaisePropertyChanged();
            }
        }

        public int CurrentStock
        {
            get
            {
                var stock = StockOnCurrentStore.FirstOrDefault(x => x.Isbn13 == SelectedBook?.Isbn13);
                return (stock is not null) ? stock.Stock : 0;
            }
            set => field = value;
        }

        public int AddAmount
        {
            get;
            set
            {
                field = value;
                RaisePropertyChanged();
            }
        }

        public GetStock? SelectedStock
        {
            get;
            set
            {
                field = value;
                SelectedBook = Books?.FirstOrDefault(x => x.Isbn13 == field?.Isbn13);
                RaisePropertyChanged();
            }
        }
        public ObservableCollection<GetStock> StockOnCurrentStore { get; set; }
        public DelegateCommand ShowDialogCommand { get; }

        //public StoreViewModel(MainWindowViewModel mainWVM)
        //{
        public StoreViewModel(IDialogService dialogService)
        {
            DialogService = dialogService;
            //this.mainWVM = mainWVM;

            ShowDialogCommand = new DelegateCommand(ExecuteShowDialog);
            StockOnCurrentStore = new ObservableCollection<GetStock>();

            LoadStores();

            Books = new ObservableCollection<Book>(GetAll<Book>());
        }

        private void LoadStores()
        {
            using var db = new BookstoreManagerContext();

            Stores = new ObservableCollection<Store>(
                db.Stores.ToList()
            );

            SelectedStore = Stores.FirstOrDefault();
            GetInventory();
        }

        void GetInventory()
        {
            if (SelectedStore is not null)
            {
                using var db = new BookstoreManagerContext();

                StockOnCurrentStore = new ObservableCollection<GetStock>(
                        db.Inventories
                            .Where(i => i.StoreId == SelectedStore.Id)
                            .Select(i => new GetStock()
                            {
                                Isbn13 = i.Isbn13,
                                Title = i.Isbn13Navigation.Title,
                                Stock = i.Stock ?? 0,
                                Price = i.Isbn13Navigation.Price ?? 0
                            }).ToList());

                //TODO: Add price to inventories (so stores can set different prices)
                //TODO: Add release date to books to have something more to search on/order by

                RaisePropertyChanged("StockOnCurrentStore");
            }
        }

        async void ExecuteShowDialog(object obj)
        {
            OrderBooks = true;
            if (obj is string name)
            {
                DialogService.ShowDialog(name, this, result =>
                {
                    if (result == "True")
                    {
                        using var db = new BookstoreManagerContext();

                        Inventory? addBook = db.Inventories.FirstOrDefault(i => i.Isbn13 == SelectedBook.Isbn13 && i.StoreId == SelectedStore.Id);

                        if (OrderBooks)
                        {
                            if (addBook is not null) addBook.Stock += AddAmount;
                            else
                            {
                                addBook = new Inventory() { Isbn13 = SelectedBook.Isbn13, StoreId = SelectedStore.Id, Stock = AddAmount };
                                db.Inventories.Add(addBook);
                            }
                        }
                        else
                        {
                            if (addBook is not null)
                            {
                                addBook.Stock = (addBook.Stock > AddAmount) ? addBook.Stock - AddAmount : 0;
                            }
                        }

                        db.SaveChanges();
                        GetInventory();
                    }

                    AddAmount = 1;
                });
            }
        }

    }
}

