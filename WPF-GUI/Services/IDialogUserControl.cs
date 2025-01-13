using System.Windows;
using System.Windows.Media;

namespace WPF_GUI.Services
{
    internal interface IDialogUserControl
    {
        string Title { get; set; }
        int Width { get; set; }
        int Height { get; set; }
        ResizeMode ResizeMode { get; set; }
        WindowStyle WindowStyle { get; set; }
        ImageSource Icon { get; set; }

        void CloseDialog(object sender, RoutedEventArgs e);
        void CancelDialog(object sender, RoutedEventArgs e);
    }
}
