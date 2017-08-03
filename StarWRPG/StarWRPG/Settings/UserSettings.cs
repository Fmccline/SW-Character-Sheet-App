using Plugin.Settings;
using Plugin.Settings.Abstractions;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace StarWRPG
{
    // Used for saving user settings such as text color and font names
    // Whenever a property is changed, the corrisponding Application.Current.Resources[<key>] is set to the new user setting
    public class UserSettings
    {
        private static ISettings AppSettings => CrossSettings.Current;

        public static readonly Color DefaultBackgroundColor = Color.FromHex("#F1F1D4");
        public static readonly Color DefaultTextColor = Color.Black;
        public static readonly Color DefaultTitleBackgroundColor = Color.Black;
        public static readonly Color DefaultTitleTextColor = Color.Yellow;
        public static readonly Color DefaultButtonColor = Color.FromHex("#282828");
        public static readonly Color DefaultButtonTextColor = Color.White;

        public static readonly string DefaultFontName = FontNames.CamingoCode;
        public static readonly double DefaultRegularFontSize = 15d;
        public static readonly double DefaultMediumFontSize = 20d;
        public static readonly double DefaultLargeFontSize = 25d;

        public static Color BackgroundColor
        {
            get
            {
                string hexColor = AppSettings.GetValueOrDefault(nameof(BackgroundColor), ColorToHex(DefaultBackgroundColor));
                return Color.FromHex(hexColor);
            }
            set
            {
                string color = ColorToHex(value);
                AppSettings.AddOrUpdateValue(nameof(BackgroundColor), color);
                Application.Current.Resources["BackgroundColor"] = color;
            }
        }
        public static Color TextColor
        {
            get
            {
                string hexColor = AppSettings.GetValueOrDefault(nameof(TextColor), ColorToHex(DefaultTextColor));
                return Color.FromHex(hexColor);
            }
            set
            {
                string color = ColorToHex(value);
                AppSettings.AddOrUpdateValue(nameof(TextColor), color);
                Application.Current.Resources["TextColor"] = color;
            }
        }
        public static Color TitleBackgroundColor
        {
            get
            {
                string hexColor = AppSettings.GetValueOrDefault(nameof(TitleBackgroundColor), ColorToHex(DefaultTitleBackgroundColor));
                return Color.FromHex(hexColor);
            }
            set
            {
                string color = ColorToHex(value);
                AppSettings.AddOrUpdateValue(nameof(TitleBackgroundColor), color);
                Application.Current.Resources["TitleBackgroundColor"] = color;
            }
        }
        public static Color TitleTextColor
        {
            get
            {
                string hexColor = AppSettings.GetValueOrDefault(nameof(TitleTextColor), ColorToHex(DefaultTitleTextColor));
                return Color.FromHex(hexColor);
            }
            set
            {
                string color = ColorToHex(value);
                AppSettings.AddOrUpdateValue(nameof(TitleTextColor), color);
                Application.Current.Resources["TitleTextColor"] = color;
            }
        }
        public static Color ButtonColor
        {
            get
            {
                string hexColor = AppSettings.GetValueOrDefault(nameof(ButtonColor), ColorToHex(DefaultButtonColor));
                return Color.FromHex(hexColor);
            }
            set
            {
                string color = ColorToHex(value);
                AppSettings.AddOrUpdateValue(nameof(ButtonColor), color);
                Application.Current.Resources["ButtonColor"] = color;
            }
        }
        public static Color ButtonTextColor
        {
            get
            {
                string hexColor = AppSettings.GetValueOrDefault(nameof(ButtonTextColor), ColorToHex(DefaultButtonTextColor));
                return Color.FromHex(hexColor);
            }
            set
            {
                string color = ColorToHex(value);
                AppSettings.AddOrUpdateValue(nameof(ButtonTextColor), color);
                Application.Current.Resources["ButtonTextColor"] = color;
            }
        }

        // When setting this property use a font from FontNames.<Font Name>
        public static string FontName
        {
            get
            {
                return AppSettings.GetValueOrDefault(nameof(FontName), DefaultFontName);
            }
            set
            {
                AppSettings.AddOrUpdateValue(nameof(FontName), value);
                Application.Current.Resources["RegularFontName"] = FontNames.FilePathToFont(value);
                Application.Current.Resources["BoldFontName"] = FontNames.FilePathToFont(value,true);
            }
        }
        public static double RegularFontSize
        {
            get
            {
                return AppSettings.GetValueOrDefault(nameof(RegularFontSize), DefaultRegularFontSize);
            }
            set
            {
                value = PutFontSizeInRange(value);
                AppSettings.AddOrUpdateValue(nameof(RegularFontSize), value);
                Application.Current.Resources["DefaultFontSize"] = value;
            }
        }
        public static double MediumFontSize
        {
            get
            {
                return AppSettings.GetValueOrDefault(nameof(MediumFontSize), DefaultMediumFontSize);
            }
            set
            {
                value = PutFontSizeInRange(value);
                AppSettings.AddOrUpdateValue(nameof(MediumFontSize), value);
                Application.Current.Resources["MediumFontSize"] = value;
            }
        }
        public static double LargeFontSize
        {
            get
            {
                return AppSettings.GetValueOrDefault(nameof(LargeFontSize), DefaultLargeFontSize);
            }
            set
            {
                value = PutFontSizeInRange(value);
                AppSettings.AddOrUpdateValue(nameof(LargeFontSize), value);
                Application.Current.Resources["LargeFontSize"] = value;
            }
        }

        public static void RestoreDefaultSettings()
        {
            BackgroundColor = DefaultBackgroundColor;
            TextColor = DefaultTextColor;
            TitleBackgroundColor = DefaultTitleBackgroundColor;
            TitleTextColor = DefaultTitleTextColor;
            ButtonColor = DefaultButtonColor;
            ButtonTextColor = DefaultButtonTextColor;

            FontName = DefaultFontName;

            RegularFontSize = DefaultRegularFontSize;
            MediumFontSize = DefaultMediumFontSize;
            LargeFontSize = DefaultLargeFontSize;
        }

        private static string ColorToHex(Color color)
        {
            string red = Convert.ToInt32(color.R * 255).ToString("X2");
            string green = Convert.ToInt32(color.G * 255).ToString("X2");
            string blue = Convert.ToInt32(color.B * 255).ToString("X2");

            return "#" + red + green + blue;
        }
        private static double PutFontSizeInRange(double fontSize)
        {
            if (fontSize < 10)
            {
                fontSize = 10;
            }
            else if (fontSize > 48)
            {
                fontSize = 48;
            }
            return fontSize;
        }
    }
}
