using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Diagnostics;
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
        SettingsViewModel settingsViewModel;

        public SettingsPage()
        {
            try
            {
                InitializeComponent();
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.StackTrace);
                Debug.WriteLine(ex.Message);
            }

            settingsViewModel = new SettingsViewModel();
            BindingContext = settingsViewModel;
        }

        private async void ChangeColorClickedAsync(object sender, EventArgs e)
        {
            var buttonClicked = (Button)sender;
            string resourceKey;

            if (buttonClicked == BackgroundColorButton)
            {
                resourceKey = "BackgroundColor";
            }
            else if (buttonClicked == TextColorButton)
            {
                resourceKey = "TextColor";
            }
            else if (buttonClicked == TitleBackgroundColorButton)
            {
                resourceKey = "TitleBackgroundColor";
            }
            else if (buttonClicked == TitleTextColorButton)
            {
                resourceKey = "TitleTextColor";
            }
            else if (buttonClicked == ButtonColorButton)
            {
                resourceKey = "ButtonColor";
            }
            else
            {
                resourceKey = "ButtonTextColor";
            }

            var previousColor = (Color)Application.Current.Resources[resourceKey];
            await Navigation.PushAsync(new ColorPage(settingsViewModel, previousColor, resourceKey));
        }

        private void SetFont(string fontName, string boldFontName)
        {
            Application.Current.Resources["FontName"] = Application.Current.Resources[fontName];
            Application.Current.Resources["BoldFontName"] = Application.Current.Resources[boldFontName];
        }

        private void CamingoCodeClicked(object sender, EventArgs e)
        {
            SetFont("CamingoCodeRegular", "CamingoCodeBold");
        }

        private void EnigmaticClicked(object sender, EventArgs e)
        {
            SetFont("EnigmaticRegular", "EnigmaticBold");
        }

        private void GreyscaleBasicClicked(object sender, EventArgs e)
        {
            SetFont("GreyscaleBasicRegular", "GreyscaleBasicBold");
        }

        private void NeutonClicked(object sender, EventArgs e)
        {
            SetFont("NeutonRegular", "NeutonBold");
        }
    }
}