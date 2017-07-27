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
    /* Intent
     *      Displays the main page for the FFG App
     *      The user can:
     *          Create a character
     *          Select a character
     *          Search for a character
     */
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MainPage : ContentPage
    {
        CharacterSelectionPage selectionPage;
        CharacterDeletionPage deletionPage;

        public MainPage()
        {
            InitializeComponent();
            NavigationPage.SetHasNavigationBar(this, false);

            selectionPage = new CharacterSelectionPage();
            deletionPage = new CharacterDeletionPage();
        }

        private async void SelectCharacterAsync(object sender, EventArgs e)
        {
            await Navigation.PushAsync(selectionPage);
        }

        private async void DeleteCharacterAsync(object sender, EventArgs e)
        {
            await Navigation.PushAsync(deletionPage);
        }

        private async void CreateCharacterAsync(object sender, EventArgs e)
        {
            var newCharacter = await App.CharacterDatabase.SaveAndReturnCharacterAsync(new FFGCharacterViewModel());
            var characterCreationNavigation = new CharacterCreationNavigation(newCharacter);
            await Navigation.PushAsync(characterCreationNavigation.DefaultPage);
        }

        private async void SettingsTappedAsync(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new SettingsPage());
        }
    }
}