using System.Windows;
using WPF_GUI.Services;
using WPF_GUI.ViewModels;

namespace WPF_GUI
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            DialogService dialogService = new();

            //dialogService.RegisterDialog<AddBooksDialog, AddBookViewModel>();
            //dialogService.RegisterDialog<NotificationDialog, NotificationViewModel>();
            //dialogService.RegisterDialog<AddInventoryDialog, StoreViewModel>();

            MainWindowViewModel MainWindowVM = new(dialogService);

            DataContext = MainWindowVM;
        }
    }
}