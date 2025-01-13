using System.Windows.Controls;
using WPF_GUI.Services;
using WPF_GUI.ViewModels;

namespace WPF_GUI.Views
{
    /// <summary>
    /// Interaction logic for StoreView.xaml
    /// </summary>
    public partial class BookView : UserControl
    {
        public BookView()
        {
            InitializeComponent();

            DialogService dialogService = new();

            ViewModelBase windowVM = new BookViewModel(dialogService);

            DataContext = windowVM;
        }
    }
}
