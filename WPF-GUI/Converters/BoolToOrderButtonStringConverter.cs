using System.Globalization;
using System.Windows.Data;

namespace WPF_GUI.Converters
{
    public class BoolToOrderButtonStringConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is bool b)
            {
                if (b) return "Beställ";
                return "Ta bort";
            }
            return "";
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}