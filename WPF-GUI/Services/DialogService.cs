using WPF_GUI.Dialogs;
using WPF_GUI.ViewModels;

namespace WPF_GUI.Services
{
    public class DialogService : IDialogService
    {
        //private Dictionary<Type, Type> _mappings = new();

        //public void RegisterDialog<TView, TViewModel>()
        //{
        //    if (typeof(TViewModel) is not null)
        //    {
        //        _mappings.Add(typeof(TView), typeof(TViewModel));
        //    }
        //}

        public void ShowDialog(string name, ViewModelBase currentViewModel, Action<string> callback)
        {
            var type = Type.GetType($"WPF_GUI.Dialogs.{name}");

            var IType = typeof(IDialogUserControl);
            var hasInterface = type.GetInterfaces().Contains(IType);
            //var vmType = _mappings[type];

            if (hasInterface)
            {
                ShowDialogInternal(type, currentViewModel, callback);
            }
        }

        // String on what Dialog to show
        // Ensure it uses IDialogUserControl, which is used to set all width/height/icon etc.
        //public void ShowDialog<TViewModel>(string dialogName, Action<string> callback)
        //{
        //    var vmType = typeof(TViewModel);
        //    var vType = Type.GetType($"WPF_GUI.Dialogs.{dialogName}");

        //    var IType = typeof(IDialogUserControl);
        //    var hasInterface = vType.GetInterfaces().Contains(IType);

        //    //var vType = _mappings[type];
        //    if (hasInterface)
        //    {
        //        ShowDialogInternal(vType, callback, vmType);
        //    }
        //}

        private void ShowDialogInternal(Type dialogName, ViewModelBase viewModel, Action<string> callback)
        {
            var dialog = new DialogWindow();

            EventHandler closeEventHandler = null;
            closeEventHandler = (s, e) =>
            {
                callback(dialog.DialogResult.ToString());
                dialog.Closed -= closeEventHandler;
            };
            dialog.Closed += closeEventHandler;

            var content = Activator.CreateInstance(dialogName);

            if (content is IDialogUserControl dialogUC)
            {
                if (viewModel is not null)
                {
                    (content as System.Windows.FrameworkElement).DataContext = viewModel;
                }

                dialog.Height = dialogUC.Height;
                dialog.Width = dialogUC.Width;
                dialog.Title = dialogUC.Title;
                dialog.Icon = dialogUC.Icon;
                dialog.ResizeMode = dialogUC.ResizeMode;
                dialog.WindowStyle = dialogUC.WindowStyle;

                dialog.Content = content;

                dialog.ShowDialog();
            }
        }
    }
}