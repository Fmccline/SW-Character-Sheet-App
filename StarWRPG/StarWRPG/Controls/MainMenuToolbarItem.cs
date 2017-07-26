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
    class MainMenuToolbarItem : ToolbarItem
    {
        FFGCharacterViewModel ffgCharacterViewModel;
        Page currentPage;

        public MainMenuToolbarItem(FFGCharacterViewModel ffgCharacterViewModel, Page currentPage)
        {
            this.ffgCharacterViewModel = ffgCharacterViewModel;
            this.currentPage = currentPage;
            Text = "Menu";
            Clicked += MenuButtonClickedAsync;
        }

        private async void MenuButtonClickedAsync(object sender, EventArgs e)
        {
            if (ffgCharacterViewModel.Name.Equals(""))
            {
                await App.CharacterDatabase.DeleteCharacterAsync(ffgCharacterViewModel);
            }
            else
            {
                await App.CharacterDatabase.SaveCharacterAsync(ffgCharacterViewModel);
            }
            await currentPage.Navigation.PopToRootAsync();
        }
    }
}
