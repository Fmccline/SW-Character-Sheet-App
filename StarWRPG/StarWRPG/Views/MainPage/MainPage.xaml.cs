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
    public partial class MainPage : ContentPage
    {
        MainPageViewModel mainPageViewModel;

        public MainPage()
        {
            InitializeComponent();
            mainPageViewModel = new MainPageViewModel();
            BindingContext = mainPageViewModel;
        }

        protected override async void OnAppearing()
        {
            charactersListView.ItemsSource = await mainPageViewModel.GetCharacters();
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

        private void EotEButtonClickedAsync(object sender, EventArgs e)
        {
            // create EotE Character
        }

        private void AoRButtonClickedAsync(object sender, EventArgs e)
        {
            // create AoR Character
        }

        private async void FaDButtonClickedAsync(object sender, EventArgs e)
        {
            var newCharacter = await App.CharacterDatabase.SaveAndReturnCharacterAsync(new FFGCharacterViewModel());
            var characterCreationNavigation = new CharacterCreationNavigation(newCharacter);
            await Navigation.PushAsync(characterCreationNavigation.DefaultPage);
        }
    }
}