using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Xamarin.Forms;

namespace StarWRPG.Views
{
    public class CharacterCreationBasePage : ContentPage
    {
        FaDCharacterViewModel fadCharacterViewModel;

        public CharacterCreationBasePage(FaDCharacterViewModel fadCharacterViewModel)
        {
            this.fadCharacterViewModel = fadCharacterViewModel;
            ToolbarItem saveButton = new ToolbarItem { Text = "Save" };
            saveButton.Clicked += SaveButtonActivated;
            ToolbarItems.Add(saveButton);
        }

        private async void SaveButtonActivated(object sender, EventArgs e)
        {
            if (fadCharacterViewModel.Name.Equals(""))
            {
                await DisplayAlert("No Name Nelly", "You forgot to name your character, silly goose!", "Oops");
            }
            else
            {
                App.CharacterDatabase.SaveCharacterViewModelAsync(fadCharacterViewModel);
                await Navigation.PopAsync();
            }
        }
    }
}