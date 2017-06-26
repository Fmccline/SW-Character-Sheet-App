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
    class CharacterCreationNavigationButtons : NavigationButtonsBase
    {
        public CharacterCreationNavigationButtons(FaDCharacterViewModel character, Type callerPageType) : base(character, callerPageType) { }

        protected override List<ToPageButton> MakeToPageButtons()
        {
            return new List<ToPageButton>
            {
                new ToPageButton("Info",typeof(CharacterInfoCreationPage),fadCharacterViewModel),
                new ToPageButton("Skills",typeof(CharacterSkillsCreationPage),fadCharacterViewModel),
                new ToPageButton("Talents",typeof(CharacterTalentsCreationPage),fadCharacterViewModel),
                new ToPageButton("Items",typeof(CharacterInventoryCreationPage),fadCharacterViewModel),
            };
        }
    }
}
