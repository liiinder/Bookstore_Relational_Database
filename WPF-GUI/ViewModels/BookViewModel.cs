using Microsoft.EntityFrameworkCore;
using System.Collections.ObjectModel;
using WPF_GUI.Commands;
using WPF_GUI.Models;
using WPF_GUI.Models.Entities;
using WPF_GUI.Services;

namespace WPF_GUI.ViewModels
{
    internal class BookViewModel : ViewModelBase
    {
        public IDialogService DialogService { get; }
        public DelegateCommand ShowDialogCommand { get; }
        public DelegateCommand AddAuthorToBookCommand { get; }
        public DelegateCommand RemoveAuthorFromBookCommand { get; }

        public List<Book> Books { get; set; }
        public List<Author> Authors { get; set; }
        public ObservableCollection<Author> BookAuthors { get; set; }

        public Book? SelectedBook
        {
            get;
            set
            {
                field = value;
                RaisePropertyChanged();
            }
        }
        public Author? SelectedAuthorToAdd { get; set; }

        public BookViewModel(IDialogService dialogService)
        {
            DialogService = dialogService;
            ShowDialogCommand = new DelegateCommand(ExecuteShowDialog);
            AddAuthorToBookCommand = new DelegateCommand(AddAuthorToBook);
            RemoveAuthorFromBookCommand = new DelegateCommand(RemoveAuthorFromBook);

            SelectedBook = null;
            BookAuthors = new ObservableCollection<Author>();

            Authors = GetAll<Author>();
            Books = GetBooks();
        }

        private void AddAuthorToBook(object obj)
        {
            if (SelectedAuthorToAdd is not null) BookAuthors.Add(SelectedAuthorToAdd);
        }
        private void RemoveAuthorFromBook(object obj)
        {
            if (obj is Author toRemove) BookAuthors.Remove(toRemove);
        }

        void ExecuteShowDialog(object obj)
        {
            string oldIsbn13 = string.Empty;

            if (SelectedBook is null)
            {
                SelectedBook = new Book();
                BookAuthors.Clear();
            }
            else
            {
                oldIsbn13 = SelectedBook.Isbn13;
                BookAuthors = new ObservableCollection<Author>(SelectedBook.Authors);
            }

            if (obj is string name)
            {
                DialogService.ShowDialog(name, this, result =>
                {
                    if (result == "True")
                    {
                        using var db = new BookstoreManagerContext();

                        db.Attach(SelectedBook);

                        if (oldIsbn13 == string.Empty) db.Books.Add(SelectedBook);
                        //else if (oldIsbn13 != SelectedBook.Isbn13)
                        //{
                        //    var crashingBook = Books.FirstOrDefault(b => b.Isbn13 == SelectedBook.Isbn13);
                        //    if (crashingBook is not null)
                        //    {

                        //    }
                        //}
                        SelectedBook.Authors.Clear();
                        BookAuthors.ToList().ForEach(a => SelectedBook.Authors.Add(a));

                        db.Update(SelectedBook);

                        db.SaveChanges();
                    }
                    Books = GetBooks();
                    RaisePropertyChanged("Books");
                });
            }
        }

        // {"The instance of entity type 'Book' cannot be tracked because another instance with the key value
        // '{Isbn13: 9780007465828}' is already being tracked.
        // When attaching existing entities, ensure that only one entity instance with a given key value
        // is attached."}

        // Manuellt detatcha objektet?!

        // https://github.com/Kavency/ITHS_DB_Labb02/blob/master/TheBookNook_WPF/ViewModel/BooksVM.cs#L150

        public List<Book> GetBooks()
        {
            using var context = new BookstoreManagerContext();

            //return context.Books.Include(x => x.Authors).AsNoTracking().ToList();
            return context.Books.Include(x => x.Authors).ToList();
        }
    }
}