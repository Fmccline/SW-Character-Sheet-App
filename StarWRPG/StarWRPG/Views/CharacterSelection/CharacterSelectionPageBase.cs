using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Xamarin.Forms;

namespace StarWRPG.Views
{
    /* Intent
     *      Base class for selecting a character from the character database
     */
    public abstract class CharacterSelectionPageBase : ContentPage
    {
        protected CharacterSelectionLayout characterSelectionLayout;

        public CharacterSelectionPageBase()
        {
            characterSelectionLayout = new CharacterSelectionLayout();
            characterSelectionLayout.CharactersListView.ItemSelected += CharacterSelected;
            Content = characterSelectionLayout;

            Style = (Style)Application.Current.Resources["PageStyle"];
        }

        protected abstract void CharacterSelected(object sender, SelectedItemChangedEventArgs e);

        protected override async void OnAppearing()
        {
            await characterSelectionLayout.RefreshCharactersAsync();
        }
    }
}