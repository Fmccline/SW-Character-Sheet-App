using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace StarWRPG.Controls
{
    public class ToPageButton : Button
    {
        public Type PageType { get; private set; }
        FFGCharacterViewModel ffgCharacterViewModel;

        public ToPageButton(string text, Type pageType, FFGCharacterViewModel character)
        {
            ffgCharacterViewModel = character;
            Text = text;
            PageType = pageType;
            Clicked += ToPageButtonClickedAsync;

            HorizontalOptions = LayoutOptions.FillAndExpand;
        }

        private async void ToPageButtonClickedAsync(object sender, EventArgs e)
        {
            var previousPage = Navigation.NavigationStack.Last();
            Navigation.InsertPageBefore((Page)Activator.CreateInstance(PageType, ffgCharacterViewModel), previousPage);
            await Navigation.PopAsync();
        }

    }
}
