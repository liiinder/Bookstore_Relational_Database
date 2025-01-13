using WPF_GUI.ViewModels;

namespace WPF_GUI.Services
{
    public interface IDialogService
    {
        public void ShowDialog(string dialogName, ViewModelBase viewModel, Action<string> callback);
        //public void ShowDialog<ViewModel>(string dialogName, ViewModelBase viewModel, Action<string> callback);
    }
}
