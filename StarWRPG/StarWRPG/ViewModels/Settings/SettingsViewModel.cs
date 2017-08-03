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
        double defaultFontSize;
        double mediumFontSize;
        double largeFontSize;

        public double RegularFontSize
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

        public ICommand SetUserSettingsFontSizesComand { get => new Command(SetUserSettingsFontSizes); }

        public SettingsViewModel() { GetFontSizes(); }

        public void RestoreDefaultColors()
        {
            UserSettings.RestoreDefaultColors();
        }
        public void RestoreDefaultFont()
        {
            UserSettings.RestoreDefaultFont();
            GetFontSizes();
        }
        public void RestoreDefaultSettings()
        {
            RestoreDefaultColors();
            RestoreDefaultFont();
        }

        private void GetFontSizes()
        {
            RegularFontSize = UserSettings.RegularFontSize;
            MediumFontSize = UserSettings.MediumFontSize;
            LargeFontSize = UserSettings.LargeFontSize;
        }
        private void SetUserSettingsFontSizes()
        {
            UserSettings.RegularFontSize = RegularFontSize;
            UserSettings.MediumFontSize = MediumFontSize;
            UserSettings.LargeFontSize = LargeFontSize;
        }
    }
}
