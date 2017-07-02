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
        public CharacterCreationNavigationButtons(FFGCharacterViewModel character, Type callerPageType) : base(character, callerPageType) { }

        protected override List<ToPageButton> MakeToPageButtons()
        {
            return new List<ToPageButton>
            {
                new ToPageButton("Info",typeof(CharacterInfoCreationPage),ffgCharacterViewModel),
                new ToPageButton("Skills",typeof(CharacterSkillsCreationPage),ffgCharacterViewModel),
                new ToPageButton("Talents",typeof(CharacterTalentsCreationPage),ffgCharacterViewModel),
                new ToPageButton("Items",typeof(CharacterInventoryCreationPage),ffgCharacterViewModel),
            };
        }
    }
}
