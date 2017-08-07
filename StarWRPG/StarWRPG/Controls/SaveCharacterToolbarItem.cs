using StarWRPG.ViewModels;
using StarWRPG.Views;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace StarWRPG.Controls
{
    // Intent
    //      Button for the user to save their character to the database
    class SaveCharacterToolbarItem : ToolbarItem
    {
        FFGCharacterViewModel ffgCharacterViewModel;
        Page currentPage;

        public SaveCharacterToolbarItem(FFGCharacterViewModel ffgCharacterViewModel, Page currentPage)
        {
            this.ffgCharacterViewModel = ffgCharacterViewModel;
            this.currentPage = currentPage;
            Text = "Save";
            Clicked += SaveButtonActivatedAsync;
        }

        private async void SaveButtonActivatedAsync(object sender, EventArgs e)
        {
            if (ffgCharacterViewModel.Name.Equals(""))
            {
                await currentPage.DisplayAlert("No Name Nelly", "You forgot to name your character, silly goose!", "Oops");
            }
            else
            {
                await App.CharacterDatabase.SaveCharacterAsync(ffgCharacterViewModel);
                var characterDetailNavigation = new CharacterDetailNavigation(ffgCharacterViewModel);

                try
                {
                    var nextPage = characterDetailNavigation.GetPageByTitle(currentPage.Title);
                    var firstPage = currentPage.Navigation.NavigationStack.First();
                    currentPage.Navigation.InsertPageBefore(nextPage, firstPage);
                    await currentPage.Navigation.PopToRootAsync();
                }
                catch (Exception ex)
                {
                    await currentPage.DisplayAlert("Error: Droids Not Found", ex.Message, "Ok");
                }
            }
        }
    }
}
