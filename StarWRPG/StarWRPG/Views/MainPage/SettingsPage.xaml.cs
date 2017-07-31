using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace StarWRPG.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class SettingsPage : ContentPage
    {
        Dictionary<string, Tuple<double, double, double>> presetColors;
        SettingsViewModel settingsViewModel;

        public SettingsPage()
        {
            InitializeComponent();

            settingsViewModel = new SettingsViewModel();
            BindingContext = settingsViewModel;

            presetColors = new Dictionary<string, Tuple<double, double, double>>
            {
                ["Black"] = new Tuple<double, double, double>(0, 0, 0),
                ["Blue"] = new Tuple<double, double, double>(0, 0, 128),
                ["Gray"] = new Tuple<double, double, double>(128, 128, 128),
                ["Green"] = new Tuple<double, double, double>(0, 128, 0),
                ["Red"] = new Tuple<double, double, double>(128, 0, 0),
                ["Yellow"] = new Tuple<double, double, double>(255, 255, 0),
                ["White"] = new Tuple<double, double, double>(255, 255, 255),
            };
        }

        private async void PresetColorClickedAsync(object sender, EventArgs e)
        {
            string[] colorNames = new string[presetColors.Count];
            int index = 0;
            foreach (var color in presetColors)
            {
                colorNames[index++] = color.Key;
            }

            var colorName = await DisplayActionSheet("Colors", "Cancel", null, colorNames);
            if (colorName != null && !colorName.Equals("Cancel"))
            {
                settingsViewModel.Red = presetColors[colorName].Item1;
                settingsViewModel.Green = presetColors[colorName].Item2;
                settingsViewModel.Blue = presetColors[colorName].Item3;
            }
        }
    }
}