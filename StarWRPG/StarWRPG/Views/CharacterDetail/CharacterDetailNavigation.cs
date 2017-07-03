using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using StarWRPG.ViewModels;
using Xamarin.Forms;
using StarWRPG.Controls;

namespace StarWRPG.Views
{
    public class CharacterDetailNavigation : CharacterNavigation
    {
        public CharacterDetailNavigation(FFGCharacterViewModel character) : base(character) { }

        protected override List<BasePage> InitializePages()
        {
            return new List<BasePage>
            {
                new CharacterInfoDetailPage(ffgCharacterViewModel),
                new CharacterInventoryPage(ffgCharacterViewModel),
                new CharacterSkillsPage(ffgCharacterViewModel),
                new CharacterTalentsPage(ffgCharacterViewModel),
            };
        }

        protected override List<ToolbarItem> InitializeToolbarItems(BasePage page)
        {
            return new List<ToolbarItem>
            {
                new EditCharacterToolbarItem(ffgCharacterViewModel, page),
                new CharacterDetailsToolbarItem(pages, page),
            };
        }
    }
}
