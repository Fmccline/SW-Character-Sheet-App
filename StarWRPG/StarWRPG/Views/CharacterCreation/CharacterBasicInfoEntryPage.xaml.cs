using StarWRPG.Models;
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
    public partial class CharacterBasicInfoEntryPage : ContentPage
    {
        FaDCharacterViewModel fadCharacterViewModel;

        public CharacterBasicInfoEntryPage(FaDCharacterViewModel characterViewModel)
        {
            InitializeComponent();

            fadCharacterViewModel = characterViewModel;
            BindingContext = fadCharacterViewModel;

            MainStackLayout.Children.Insert(0, new CharacterCreationNavigationButtons(fadCharacterViewModel, GetType()));
            MainStackLayout.Children.Add(new CriticalInjuriesGrid(fadCharacterViewModel.CriticalInjuriesViewModel));
        }

        public async void EditValueAsync(object sender, EventArgs e)
        {
            var buttonClicked = sender as Button;
            if (buttonClicked == EditBackgroundButton)
                await Navigation.PushModalAsync(new EditorPage("Character Background", "Background", fadCharacterViewModel));
            else if (buttonClicked == EditDescriptionButton)
                await Navigation.PushModalAsync(new EditorPage("Character Description", "Description", fadCharacterViewModel));
            else if (buttonClicked == EditMotivationsButton)
                await Navigation.PushModalAsync(new EditorPage("Character Motivations", "Motivation", fadCharacterViewModel));
        }

        private async void SaveActivatedAsync(object sender, EventArgs e)
        {
            await Navigation.PopAsync();
        }
    }
}