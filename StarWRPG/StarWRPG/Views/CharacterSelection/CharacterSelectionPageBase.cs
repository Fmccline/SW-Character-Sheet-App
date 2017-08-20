using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Diagnostics;
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

            Style = (Style)Application.Current.Resources["PageStyle"];
        }

        protected abstract void CharacterSelected(object sender, SelectedItemChangedEventArgs e);

        protected override async void OnAppearing()
        {
            base.OnAppearing();
            Content = new ActivityIndicator
            {
                Color = (Color)Application.Current.Resources["TextColor"],
                IsRunning = true,
            };
            await characterSelectionLayout.RefreshCharactersAsync();
            Content = characterSelectionLayout;
        }
    }
}