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
    class CharacterDetailNavigationButtons : NavigationButtonsBase
    {
        public CharacterDetailNavigationButtons(FFGCharacterViewModel character, Type callerPageType) : base(character, callerPageType) { }

        protected override List<ToPageButton> MakeToPageButtons()
        {
            return new List<ToPageButton>
            {
                new ToPageButton("Info", typeof(CharacterInfoDetailPage), ffgCharacterViewModel),
                new ToPageButton("Skills", typeof(CharacterSkillsDetailPage), ffgCharacterViewModel),
                new ToPageButton("Talents", typeof(CharacterTalentsDetailPage), ffgCharacterViewModel),
                new ToPageButton("Items", typeof(CharacterInventoryDetailPage), ffgCharacterViewModel),
            };
        }
    }
}
