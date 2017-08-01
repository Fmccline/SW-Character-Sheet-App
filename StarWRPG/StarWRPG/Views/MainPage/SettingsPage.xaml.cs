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
    // Page for displaying and changing app settings like:
    // - Colors of text and background
    // - Font and Font Size
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class SettingsPage : ContentPage
    {
        SettingsViewModel settingsViewModel;

        public SettingsPage()
        {
            InitializeComponent();
            settingsViewModel = new SettingsViewModel();
            BindingContext = settingsViewModel;

            AddResetToDefaultToolbarItem();
        }

        protected override void OnAppearing()
        {
            EnableAllButtons();
            DisableCurrentFontButton();
            base.OnAppearing();
        }

        private void AddResetToDefaultToolbarItem()
        {
            var defaultToolbarItem = new ToolbarItem { Text = "Default" };
            defaultToolbarItem.Clicked += DefaultClickedAsync;
            ToolbarItems.Add(defaultToolbarItem);
        }

        private async void DefaultClickedAsync(object sender, EventArgs e)
        {
            var answer = await DisplayAlert("Revert to Default", "Are you sure you want to revert back to the default settings?", "Yes", "No");
            if (answer)
            {
                settingsViewModel.RestoreDefaultSettings();
                OnAppearing();
            }
        }

        private async void ChangeColorClickedAsync(object sender, EventArgs e)
        {
            string resourceKey;
            var buttonClicked = (Button)sender;

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

        private void SetFont(string fontName)
        {
            Application.Current.Resources["RegularFontName"] = Application.Current.Resources[fontName];
            Application.Current.Resources["BoldFontName"] = Application.Current.Resources[fontName+"Bold"];
        }

        private void SetFontClicked(object sender, EventArgs e)
        {
            string fontName;
            var buttonClicked = (Button)sender;

            if (buttonClicked == CamingoCodeButton)
            { 
                fontName = FontNames.CamingoCode;
            }
            else if (buttonClicked == EnigmaticButton)
            {
                fontName = FontNames.Enigmatic;
            }
            else if (buttonClicked == AndadaButton)
            {
                fontName = FontNames.Andada;
            }
            else if (buttonClicked == GreyscaleBasicButton)
            {
                fontName = FontNames.GreyscaleBasic;
            }
            else if (buttonClicked == HKGroteskButton)
            {
                fontName = FontNames.HKGrotesk;
            }
            else
            {
                fontName = FontNames.Neuton;
            }
            EnableAllButtons();
            buttonClicked.IsEnabled = false;
            SetFont(fontName);
        }

        private void EnableAllButtons()
        {
            AndadaButton.IsEnabled = true;
            CamingoCodeButton.IsEnabled = true;
            EnigmaticButton.IsEnabled = true;
            GreyscaleBasicButton.IsEnabled = true;
            HKGroteskButton.IsEnabled = true;
            NeutonButton.IsEnabled = true;
        }

        private void DisableCurrentFontButton()
        {
            var currentFont = Application.Current.Resources["RegularFontName"];

            if (currentFont == Application.Current.Resources[FontNames.Andada])
            {
                AndadaButton.IsEnabled = false;
            }
            else if (currentFont == Application.Current.Resources[FontNames.CamingoCode])
            {
                CamingoCodeButton.IsEnabled = false;
            }
            else if (currentFont == Application.Current.Resources[FontNames.Enigmatic])
            {
                EnigmaticButton.IsEnabled = false;
            }
            else if (currentFont == Application.Current.Resources[FontNames.GreyscaleBasic])
            {
                GreyscaleBasicButton.IsEnabled = false;
            }
            else if (currentFont == Application.Current.Resources[FontNames.HKGrotesk])
            {
                HKGroteskButton.IsEnabled = false;
            }
            else if (currentFont == Application.Current.Resources[FontNames.Neuton])
            {
                NeutonButton.IsEnabled = false;
            }
        }
    }
}