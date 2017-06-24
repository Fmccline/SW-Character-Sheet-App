﻿using StarWRPG.ViewModels;
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
            Clicked += toPageButtonClickedAsync;

            HorizontalOptions = LayoutOptions.FillAndExpand;
        }

        private async void toPageButtonClickedAsync(object sender, EventArgs e)
        {
            try
            {
                var previousPage = Navigation.NavigationStack.Last();
                Navigation.InsertPageBefore((Page)Activator.CreateInstance(PageType, fadCharacterViewModel), previousPage);
                await Navigation.PopAsync();
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.StackTrace);
                Debug.WriteLine(ex.Message);
            }
        }

        private void removePreviousPageFromStack()
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
