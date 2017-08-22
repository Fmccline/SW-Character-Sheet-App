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
            try
            {
                await characterSelectionLayout.RefreshCharactersAsync();
                Content = characterSelectionLayout;
            }
            catch (Exception)
            {
                string message = "A stuck up, half-witted, scruffy-looking error occured! I'm going to bring you back to the main menu, sorry about that.";
                await DisplayAlert("Oops", message, "It's OK", "Do better");
                await Navigation.PopToRootAsync();
            }
        }
    }
}