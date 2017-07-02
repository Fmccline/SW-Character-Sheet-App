using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace StarWRPG.Controls
{
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
                App.CharacterDatabase.SaveCharacterAsync(ffgCharacterViewModel);
                await currentPage.Navigation.PopAsync();
            }
        }
    }
}
