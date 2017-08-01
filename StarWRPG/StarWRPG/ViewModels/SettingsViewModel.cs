using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace StarWRPG.ViewModels
{
    public class SettingsViewModel : ViewModelBase
    {
        Color customColor;
        double red;
        double green;
        double blue;
        double defaultFontSize;
        double mediumFontSize;
        double largeFontSize;

        public double DefaultFontSize
        {
            get { return defaultFontSize; }
            set
            {
                defaultFontSize = value;
                OnPropertyChanged();
            }
        }
        public double MediumFontSize
        {
            get { return mediumFontSize; }
            set
            {
                mediumFontSize = value;
                OnPropertyChanged();
            }
        }
        public double LargeFontSize
        {
            get { return largeFontSize; }
            set
            {
                largeFontSize = value;
                OnPropertyChanged();
            }
        }
        public Color CustomColor
        {
            get { return customColor; }
            set
            {
                customColor = value;
                OnPropertyChanged();
            }
        }
        public double Red
        {
            get { return red; }
            set
            {
                red = value;
                SetCustomColor();
                OnPropertyChanged();
            }
        }
        public double Green
        {
            get { return green; }
            set
            {
                green = value;
                SetCustomColor();
                OnPropertyChanged();
            }
        }
        public double Blue
        {
            get { return blue; }
            set
            {
                blue = value;
                SetCustomColor();
                OnPropertyChanged();
            }
        }

        public ICommand SetFontSizesCommand { get => new Command(SetFontSizes); }

        public SettingsViewModel()
        {
            Red = 255 / 2;
            Green = 255 / 2;
            Blue = 255 / 2;

            GetFontSizes();
        }

        public void RestoreDefaultSettings()
        {
            App.SetDefaultSettings();
            GetFontSizes();
        }

        public void GetFontSizes()
        {
            DefaultFontSize = (double)Application.Current.Resources["DefaultFontSize"];
            MediumFontSize = (double)Application.Current.Resources["MediumFontSize"];
            LargeFontSize = (double)Application.Current.Resources["LargeFontSize"];
        }

        public void RestoreDefaultColors() { App.SetDefaultColors(); }

        public void SetResourceColor(string resourceKey)
        {
            Application.Current.Resources[resourceKey] = CustomColor;
        }

        private void SetCustomColor()
        {
            CustomColor = Color.FromRgb(red / 255, green / 255, blue / 255);
        }

        private void SetFontSizes()
        {
            DefaultFontSize = PutFontSizeInRange(DefaultFontSize);
            MediumFontSize = PutFontSizeInRange(MediumFontSize);
            LargeFontSize = PutFontSizeInRange(LargeFontSize);
            Application.Current.Resources["DefaultFontSize"] = DefaultFontSize;
            Application.Current.Resources["MediumFontSize"] = MediumFontSize;
            Application.Current.Resources["LargeFontSize"] = LargeFontSize;
        }

        private double PutFontSizeInRange(double fontSize)
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
