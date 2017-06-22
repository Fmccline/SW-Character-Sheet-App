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

            pageButtons = new List<ToPageButton>
            {
                new ToPageButton("Info", typeof(CharacterBasicInfoEntryPage), fadCharacterViewModel),
                new ToPageButton("Skills", typeof(CharacterSkillsPage), fadCharacterViewModel),
                new ToPageButton("Items", typeof(CharacterInventoryEntryPage), fadCharacterViewModel),
                new ToPageButton("Talents", typeof(CharacterTalentsPage), fadCharacterViewModel),
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
