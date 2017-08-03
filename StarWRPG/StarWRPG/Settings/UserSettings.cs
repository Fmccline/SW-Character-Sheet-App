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
    public class UserSettings
    {
        private static ISettings AppSettings => CrossSettings.Current;

        public static readonly Color DefaultBackgroundColor = Color.FromHex("#F1F1D4");
        public static readonly Color DefaultTextColor = Color.Black;
        public static readonly Color DefaultTitleBackgroundColor = Color.Black;
        public static readonly Color DefaultTitleTextColor = Color.Yellow;
        public static readonly Color DefaultButtonColor = Color.FromHex("#282828");
        public static readonly Color DefaultButtonTextColor = Color.White;

        public static readonly string DefaultRegularFontFilePath = FontNames.FilePathToFont(FontNames.CamingoCode);
        public static readonly string DefaultBoldFontFilePath = FontNames.FilePathToFont(FontNames.CamingoCode,true);

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
                AppSettings.AddOrUpdateValue(nameof(BackgroundColor), ColorToHex(value));
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
                AppSettings.AddOrUpdateValue(nameof(TextColor), ColorToHex(value));
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
                AppSettings.AddOrUpdateValue(nameof(TitleBackgroundColor), ColorToHex(value));
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
                AppSettings.AddOrUpdateValue(nameof(TitleTextColor), ColorToHex(value));
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
                AppSettings.AddOrUpdateValue(nameof(ButtonColor), ColorToHex(value));
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
                AppSettings.AddOrUpdateValue(nameof(ButtonTextColor), ColorToHex(value));
            }
        }

        public static string RegularFontFilePath
        {
            get
            {
                return AppSettings.GetValueOrDefault(nameof(RegularFontFilePath), DefaultRegularFontFilePath);
            }
            set
            {
                AppSettings.AddOrUpdateValue(nameof(RegularFontFilePath), value);
            }
        }
        public static string BoldFontFilePath
        {
            get
            {
                return AppSettings.GetValueOrDefault(nameof(RegularFontFilePath), DefaultBoldFontFilePath);
            }
            set
            {
                AppSettings.AddOrUpdateValue(nameof(BoldFontFilePath), value);
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

            RegularFontFilePath = DefaultRegularFontFilePath;
            BoldFontFilePath = DefaultBoldFontFilePath;

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
