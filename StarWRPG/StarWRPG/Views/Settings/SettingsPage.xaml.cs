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
            var options = new string[] { "Default Colors", "Default Fonts", "All of the Above" };
            var answer = await DisplayActionSheet("Restore Settings To:", "Cancel", null, options);

            if (answer == null || answer.Equals("Cancel"))
            {
                return;
            }
            else if (answer.Equals(options[0]))
            {
                settingsViewModel.RestoreDefaultColors();
            }
            else if (answer.Equals(options[1]))
            {
                settingsViewModel.RestoreDefaultFont();
            }
            else
            {
                settingsViewModel.RestoreDefaultSettings();
            }

            OnAppearing();
        }

        private async void ChangeColorClickedAsync(object sender, EventArgs e)
        {
            var buttonClicked = (Button)sender;
            Color previousColor;
            ColorViewModel colorViewModel;

            if (buttonClicked == BackgroundColorButton)
            {
                previousColor = UserSettings.BackgroundColor;
                colorViewModel = new BackgroundColorViewModel(previousColor);
            }
            else if (buttonClicked == TextColorButton)
            {
                previousColor = UserSettings.TextColor;
                colorViewModel = new TextColorViewModel(previousColor);
            }
            else if (buttonClicked == TitleBackgroundColorButton)
            {
                previousColor = UserSettings.TitleBackgroundColor;
                colorViewModel = new TitleBackgroundColorViewModel(previousColor);
            }
            else if (buttonClicked == TitleTextColorButton)
            {
                previousColor = UserSettings.TitleTextColor;
                colorViewModel = new TitleTextColorViewModel(previousColor);
            }
            else if (buttonClicked == ButtonColorButton)
            {
                previousColor = UserSettings.ButtonColor;
                colorViewModel = new ButtonColorViewModel(previousColor);
            }
            else
            {
                previousColor = UserSettings.ButtonTextColor;
                colorViewModel = new ButtonTextColorViewModel(previousColor);
            }

            await Navigation.PushAsync(new ColorPage(colorViewModel, previousColor));
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
            UserSettings.FontName = fontName;
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
            var currentFont = UserSettings.FontName;

            if (currentFont.Equals(FontNames.FilePathToFont(FontNames.Andada)))
            {
                AndadaButton.IsEnabled = false;
            }
            else if (currentFont.Equals(FontNames.FilePathToFont(FontNames.CamingoCode)))
            {
                CamingoCodeButton.IsEnabled = false;
            }
            else if (currentFont.Equals(FontNames.FilePathToFont(FontNames.Enigmatic)))
            {
                EnigmaticButton.IsEnabled = false;
            }
            else if (currentFont.Equals(FontNames.FilePathToFont(FontNames.GreyscaleBasic)))
            {
                GreyscaleBasicButton.IsEnabled = false;
            }
            else if (currentFont.Equals(FontNames.FilePathToFont(FontNames.HKGrotesk)))
            {
                HKGroteskButton.IsEnabled = false;
            }
            else if (currentFont.Equals(FontNames.FilePathToFont(FontNames.Neuton)))
            {
                NeutonButton.IsEnabled = false;
            }
        }
    }
}