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
	public partial class ColorPage : ContentPage
	{
        string resourceKey;
        SettingsViewModel settingsViewModel;
        Dictionary<string, Tuple<double, double, double>> presetColors;

        public ColorPage (SettingsViewModel settingsViewModel, Color previousColor, string resourceKey)
		{
			InitializeComponent ();

            presetColors = new Dictionary<string, Tuple<double, double, double>>
            {
                ["Red"] = new Tuple<double, double, double>(128, 0, 0),
                ["Green"] = new Tuple<double, double, double>(0, 128, 0),
                ["Blue"] = new Tuple<double, double, double>(0, 0, 128),
                ["Purple"] = new Tuple<double, double, double>(160, 32, 240),
                ["Yellow"] = new Tuple<double, double, double>(255, 255, 0),
                ["Orange"] = new Tuple<double, double, double>(255, 165, 0),
                ["White"] = new Tuple<double, double, double>(255, 255, 255),
                ["Gray"] = new Tuple<double, double, double>(128, 128, 128),
                ["Black"] = new Tuple<double, double, double>(0, 0, 0),
            };

            this.settingsViewModel = settingsViewModel;
            this.resourceKey = resourceKey;
            PreviousColorBoxView.Color = previousColor;
            BindingContext = settingsViewModel;

            AddSaveAndCancelToolbarItem();
		}

        private void AddSaveAndCancelToolbarItem()
        {
            var saveButton = new ToolbarItem
            {
                Text = "Save"
            };
            saveButton.Clicked += SaveClickedAsync;

            var cancelButton = new ToolbarItem
            {
                Text = "Cancel"
            };
            cancelButton.Clicked += CancelClickedAsync;

            ToolbarItems.Add(cancelButton);
            ToolbarItems.Add(saveButton);
        }

        private async void CancelClickedAsync(object sender, EventArgs e)
        {
            await Navigation.PopAsync(false);
        }

        private async void SaveClickedAsync(object sender, EventArgs e)
        {
            settingsViewModel.SetResourceColor(resourceKey);
            await Navigation.PopAsync(false);
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