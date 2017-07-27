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

        public SettingsViewModel()
        {
            CustomColor = Color.Black;
        }

        public ICommand SetBackgroundColorCommand { get { return new Command(SetBackgroundColor); } }
        public ICommand SetTextColorCommand { get { return new Command(SetTextColor); } }
        public ICommand SetTitleBackgroundColorCommand { get { return new Command(SetTitleBackgroundColor); } }
        public ICommand SetTitleTextColorCommand { get { return new Command(SetTitleTextColor); } }
        public ICommand SetButtonColorCommand { get { return new Command(SetButtonColor); } }
        public ICommand RestoreDefaultColorsCommand { get { return new Command(RestoreDefaultColors); } }

        public void SetBackgroundColor() { SetResourceColor("BackgroundColor"); }
        public void SetTextColor() { SetResourceColor("TextColor"); }
        public void SetTitleBackgroundColor() { SetResourceColor("TitleBackgroundColor"); }
        public void SetTitleTextColor() { SetResourceColor("TitleTextColor"); }
        public void SetButtonColor() { SetResourceColor("ButtonColor"); }
        public void RestoreDefaultColors()
        {
            Application.Current.Resources["BackgroundColor"] = Color.Beige;
            Application.Current.Resources["TextColor"] = Color.Black;
            Application.Current.Resources["TitleBackgroundColor"] = Color.Black;
            Application.Current.Resources["TitleTextColor"] = Color.Yellow;
            Application.Current.Resources["ButtonColor"] = Color.Gray;
        }

        private void SetResourceColor(string resourceKey)
        {
            Application.Current.Resources[resourceKey] = CustomColor;
        }

        private void SetCustomColor()
        {
            CustomColor = Color.FromRgb(red / 255, green / 255, blue / 255);
        }
    }
}
