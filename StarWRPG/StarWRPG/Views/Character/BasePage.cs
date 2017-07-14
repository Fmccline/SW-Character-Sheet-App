using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Xamarin.Forms;

namespace StarWRPG.Views
{
    public abstract class BasePage : ContentPage
    {
        protected FFGCharacterViewModel ffgCharacterViewModel;

        protected BasePage(FFGCharacterViewModel character)
        {
            ffgCharacterViewModel = character;
            NavigationPage.SetHasBackButton(this, false);
        }

        public void AddToolBarItem(ToolbarItem item)
        {
            ToolbarItems.Add(item);
        }

        protected override bool OnBackButtonPressed()
        {

            return base.OnBackButtonPressed();
        }
    }
}