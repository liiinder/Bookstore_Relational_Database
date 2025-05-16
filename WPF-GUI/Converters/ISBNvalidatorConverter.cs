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
                if (isbn[..3] == "978" || isbn[..3] == "979") // [..3] first 3 characters of string
                {
                    if (long.TryParse(isbn, out long result))
                    {
                        int i = 0;

                        int checkdigit = isbn[..^1].Sum(x => (i++ % 2 * 2 + 1) * (x - '0')) % 10;
                        // (i++ % 2 * 2 + 1) makes an alternating 1 / 3 pattern which the ISBN 13 uses to calculate the check digit.
                        // https://en.wikipedia.org/wiki/ISBN#ISBN-13_check_digit_calculation

                        if (checkdigit != 0) checkdigit = 10 - checkdigit;

                        if (checkdigit == (isbn[^1] - '0')) brush.Color = Color.FromArgb(100, 0, 255, 0);
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
