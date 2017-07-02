using StarWRPG.Controls;
using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace StarWRPG.Views
{
    public abstract class NavigationButtonsBase : StackLayout
    {
        protected FFGCharacterViewModel ffgCharacterViewModel;
        protected List<ToPageButton> pageButtons;

        protected abstract List<ToPageButton> MakeToPageButtons();

        public NavigationButtonsBase(FFGCharacterViewModel character, Type callerPageType)
        {
            ffgCharacterViewModel = character;

            Orientation = StackOrientation.Horizontal;

            pageButtons = MakeToPageButtons();

            foreach (var button in pageButtons)
            {
                if (callerPageType == button.PageType)
                {
                    button.IsEnabled = false;
                }
                Children.Add(button);
            }
        }
    }
}
