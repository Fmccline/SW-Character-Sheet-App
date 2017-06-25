using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Diagnostics;
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
            PageType = pageType;
            Clicked += ToPageButtonClickedAsync;

            HorizontalOptions = LayoutOptions.FillAndExpand;
        }

        private async void ToPageButtonClickedAsync(object sender, EventArgs e)
        {
            var previousPage = Navigation.NavigationStack.Last();
            Navigation.InsertPageBefore((Page)Activator.CreateInstance(PageType, fadCharacterViewModel), previousPage);
            await Navigation.PopAsync();
        }

    }
}
