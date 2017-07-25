using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Xamarin.Forms;

namespace StarWRPG.Views
{
    /* Intent
     *      For selecting a character from a list of characters to view/edit
     */
    public class CharacterSelectionPage : CharacterSelectionPageBase
    {
        public CharacterSelectionPage()
        {
            Title = "Character Selection";
        }

        protected override async void CharacterSelected(object sender, SelectedItemChangedEventArgs e)
        {
            // Select Character
            if (e.SelectedItem is FFGCharacterViewModel character)
            {
                var characterDetailNavigation = new CharacterDetailNavigation(character);
                await Navigation.PushAsync(characterDetailNavigation.DefaultPage);
                characterSelectionLayout.CharactersListView.SelectedItem = null;
            }
        }
    }
}