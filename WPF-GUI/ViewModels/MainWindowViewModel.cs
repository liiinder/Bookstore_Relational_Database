using WPF_GUI.Commands;
using WPF_GUI.Models;
using WPF_GUI.Services;

namespace WPF_GUI.ViewModels
{
    internal class MainWindowViewModel : ViewModelBase
    {
        public IDialogService DialogService { get; }

        //public NotificationViewModel NotificationViewModel { get; }
        //public AuthorViewModel AuthorViewModel { get; }
        //public BookViewModel BookViewModel { get; }
        //public StoreViewModel StoreViewModel { get; }

        public DelegateCommand ShowDialogCommand { get; }

        public MainWindowViewModel(IDialogService dialogService)
        {
            DialogService = dialogService;

            ShowDialogCommand = new DelegateCommand(ExecuteShowDialog);

            //NotificationViewModel = new NotificationViewModel(this);
            //BookViewModel = new BookViewModel(this);
            //AuthorViewModel = new AuthorViewModel(this);
            //StoreViewModel = new StoreViewModel(this);
        }

        void ExecuteShowDialog(object obj)
        {
            if (obj is string name)
            {
                DialogService.ShowDialog(name, this, result =>
                {
                    var accepted = result;
                });
            }
        }

        public List<TModel> GetAll<TModel>() where TModel : class
        {
            var context = new BookstoreManagerContext();

            return context.Set<TModel>().ToList();
        }
    }
}
