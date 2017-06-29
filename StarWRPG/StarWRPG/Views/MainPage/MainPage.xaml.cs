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
                await Navigation.PushAsync(new CharacterInfoDetailPage(character));
                charactersListView.SelectedItem = null;
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
            await Navigation.PushAsync(new CharacterInfoCreationPage(new FFGCharacterViewModel()));
        }
    }
}