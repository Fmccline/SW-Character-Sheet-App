using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace StarWRPG.Views
{
    class CharacterCreationNavigationButtons : StackLayout
    {
        FaDCharacterViewModel fadCharacterViewModel;
        List<ToPageButton> pageButtons;

        public CharacterCreationNavigationButtons(FaDCharacterViewModel character, Type callerPageType)
        {
            fadCharacterViewModel = character;

            Orientation = StackOrientation.Horizontal;
            HorizontalOptions = LayoutOptions.CenterAndExpand;
            pageButtons = new List<ToPageButton>
            {
                new ToPageButton("Basic Info", typeof(CharacterBasicInfoEntryPage), fadCharacterViewModel),
                new ToPageButton("Stats", typeof(CharacterStatsEntryPage), fadCharacterViewModel),
                new ToPageButton("Skills", typeof(CharacterSkillsPage), fadCharacterViewModel),
                new ToPageButton("Inventory", typeof(CharacterInventoryEntryPage), fadCharacterViewModel),
            };
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
