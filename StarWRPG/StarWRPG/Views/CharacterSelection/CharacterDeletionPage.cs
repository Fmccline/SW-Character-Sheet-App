using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Xamarin.Forms;

namespace StarWRPG.Views
{
    // Intent
    //      For deleting a character from a list of characters (from the character database)
    public class CharacterDeletionPage : CharacterSelectionPageBase
    {
        public CharacterDeletionPage()
        {
            Title = "Delete Character";
        }

        protected override async void CharacterSelected(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem is FFGCharacterViewModel character)
            {
                var answer = await DisplayAlert("Delete Character", $"Are you sure you want to delete {character.Name}?", "Yes", "No");
                if (answer)
                {
                    await App.CharacterDatabase.DeleteCharacterAsync(character);
                    await Navigation.PopAsync();
                }
            }
        }
    }
}