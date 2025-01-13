using System.Globalization;
using System.Windows.Data;

namespace WPF_GUI.Converters
{
    public class BoolToOrderStringConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is bool b)
            {
                if (b) return "Antal böcker att beställa:";
                return "Antal böcker att ta bort:";
            }
            return "";
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
