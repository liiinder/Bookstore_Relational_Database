using System.Globalization;
using System.Windows.Data;

namespace WPF_GUI.Converters
{
    public class NullToAuthorButtonStringConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return value is null ? "Lägg till författare" : "Redigera författare";
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}