using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace StarWRPG.Views
{
    public class ToPageButton : Button
    {
        public Type PageType { get; private set; }
        FaDCharacterViewModel fadCharacterViewModel;

        public ToPageButton(string text, Type pageType, FaDCharacterViewModel character)
        {
            fadCharacterViewModel = character;
            Text = text;
            this.PageType = pageType;
            Clicked += toPageButtonClickedAsync;
        }

        private async void toPageButtonClickedAsync(object sender, EventArgs e)
        {
            RemovePreviousPageFromStack();
            await Navigation.PushAsync((Page)Activator.CreateInstance(PageType, fadCharacterViewModel));
        }

        private void RemovePreviousPageFromStack()
        {
            foreach (var page in Navigation.NavigationStack)
            {
                if (page.GetType() == PageType)
                {
                    Navigation.RemovePage(page);
                    return;
                }
            }
        }

    }
}
