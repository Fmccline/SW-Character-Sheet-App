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
    class EditCharacterToolbarItem : ToolbarItem
    {
        FaDCharacterViewModel fadCharacterViewModel;
        Page currentPage;

        public EditCharacterToolbarItem(FaDCharacterViewModel fadCharacterViewModel, Page currentPage)
        {
            this.fadCharacterViewModel = fadCharacterViewModel;
            this.currentPage = currentPage;
            Text = "Edit";
            Clicked += EditButtonActivatedAsync;
        }

        private async void EditButtonActivatedAsync(object sender, EventArgs e)
        {
            await currentPage.Navigation.PushAsync(new CharacterInfoCreationPage(fadCharacterViewModel));
        }
    }
}
