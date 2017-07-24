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
        CharacterListViewModel mainPageViewModel;

        public MainPage()
        {
            InitializeComponent();
            mainPageViewModel = new CharacterListViewModel();
            BindingContext = mainPageViewModel;
        }

        protected override async void OnAppearing()
        {
            mainPageViewModel.Characters = await mainPageViewModel.GetCharactersAsync();
        }

        private async void CharacterSelectedAsync(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem is FFGCharacterViewModel character)
            {
                try
                {
                    var characterDetailNavigation = new CharacterDetailNavigation(character);
                    await Navigation.PushAsync(characterDetailNavigation.DefaultPage);
                    charactersListView.SelectedItem = null;
                }
                catch(Exception ex)
                {
                    Debug.WriteLine(ex.StackTrace);
                    Debug.WriteLine(ex.Message);
                }
            }
        }

        private async void CreateCharacterClickedAsync(object sender, EventArgs e)
        {
            var newCharacter = await App.CharacterDatabase.SaveAndReturnCharacterAsync(new FFGCharacterViewModel());
            var characterCreationNavigation = new CharacterCreationNavigation(newCharacter);
            await Navigation.PushAsync(characterCreationNavigation.DefaultPage);
        }
    }
}