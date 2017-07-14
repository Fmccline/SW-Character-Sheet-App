﻿using StarWRPG.ViewModels;
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
        FFGCharacterViewModel ffgCharacterViewModel;
        Page currentPage;

        public EditCharacterToolbarItem(FFGCharacterViewModel ffgCharacterViewModel, Page currentPage)
        {
            this.ffgCharacterViewModel = ffgCharacterViewModel;
            this.currentPage = currentPage;
            Text = "Edit";
            Clicked += EditButtonActivatedAsync;
        }

        private async void EditButtonActivatedAsync(object sender, EventArgs e)
        {
            var characterCreationNavigation = new CharacterCreationNavigation(ffgCharacterViewModel);
            try
            {
                currentPage.Navigation.InsertPageBefore(characterCreationNavigation.GetPageByTitle(currentPage.Title), currentPage);
                await currentPage.Navigation.PopAsync();
            }
            catch (Exception ex)
            {
                await currentPage.DisplayAlert("Oops, an Error", ex.Message, "Ok");
            }
        }
    }
}
