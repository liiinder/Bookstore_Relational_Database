using System.Globalization;
using System.Windows.Data;
using System.Windows.Media;

namespace WPF_GUI.Converters
{
    class ISBNvalidatorToColorConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            SolidColorBrush brush = new SolidColorBrush();
            brush.Color = Color.FromArgb(100, 255, 0, 0);
            if (value is string isbn)
            {
                if (isbn.Length != 13) return brush;
                if (isbn[..3] == "978" || isbn[..3] == "979")
                {
                    if (long.TryParse(isbn, out long result))
                    {
                        int i = 0;
                        int checksum = isbn[..^1].Sum(x => (i++ % 2 * 2 + 1) * (x - '0'));
                        checksum = 10 - (checksum % 10);
                        if (checksum == (isbn[^1] - '0')) brush.Color = Color.FromArgb(100, 0, 255, 0);
                    }
                }
            }

            return brush;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
