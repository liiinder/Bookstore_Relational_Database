﻿using FontAwesome.Sharp;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using WPF_GUI.Services;

namespace WPF_GUI.Dialogs
{
    public partial class AddBookDialog : UserControl, IDialogUserControl
    {
        public string Title { get; set; }
        public int Width { get; set; }
        public int Height { get; set; }
        public ResizeMode ResizeMode { get; set; }
        public WindowStyle WindowStyle { get; set; }
        public ImageSource Icon { get; set; }

        public AddBookDialog()
        {
            InitializeComponent();

            Title = "Lägg till bok";
            WindowStyle = (WindowStyle)1;
            ResizeMode = (ResizeMode)0;
            Height = 500;
            Width = 400;

            var iconColor = (SolidColorBrush)new BrushConverter().ConvertFrom("#A73733");
            Icon = IconChar.Book.ToImageSource(iconColor, 32);
        }

        public void CloseDialog(object sender, RoutedEventArgs e)
        {
            var window = Parent as Window;
            window.DialogResult = true;
        }

        public void CancelDialog(object sender, RoutedEventArgs e)
        {
            var window = Parent as Window;
            window.DialogResult = false;
        }
    }
}
