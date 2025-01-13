namespace WPF_GUI.ViewModels
{
    internal class NotificationViewModel : ViewModelBase
    {
        private readonly MainWindowViewModel? mainVVM;

        public string TestText { get; set; }

        public NotificationViewModel(MainWindowViewModel mainVVM)
        {
            this.mainVVM = mainVVM;

            TestText = "This is a test text";
        }
    }
}
