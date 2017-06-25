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
        FaDCharacterViewModel fadCharacterViewModel;
        Page currentPage;

        public SaveCharacterToolbarItem(FaDCharacterViewModel fadCharacterViewModel, Page currentPage)
        {
            this.fadCharacterViewModel = fadCharacterViewModel;
            this.currentPage = currentPage;
            Text = "Save";
            Clicked += SaveButtonActivatedAsync;
        }

        private async void SaveButtonActivatedAsync(object sender, EventArgs e)
        {
            if (fadCharacterViewModel.Name.Equals(""))
            {
                await currentPage.DisplayAlert("No Name Nelly", "You forgot to name your character, silly goose!", "Oops");
            }
            else
            {
                App.CharacterDatabase.SaveCharacterAsync(fadCharacterViewModel);
                await currentPage.Navigation.PopAsync();
            }
        }
    }
}
