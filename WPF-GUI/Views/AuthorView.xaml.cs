using System.Windows.Controls;
using WPF_GUI.Services;
using WPF_GUI.ViewModels;

namespace WPF_GUI.Views
{
    /// <summary>
    /// Interaction logic for StoreView.xaml
    /// </summary>
    public partial class AuthorView : UserControl
    {
        public AuthorView()
        {
            InitializeComponent();

            DialogService dialogService = new();

            ViewModelBase windowVM = new AuthorViewModel(dialogService);

            DataContext = windowVM;
        }
    }
}
