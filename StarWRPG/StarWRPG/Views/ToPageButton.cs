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
            await Navigation.PushAsync((Page)Activator.CreateInstance(PageType, fadCharacterViewModel));
        }
    }
}
