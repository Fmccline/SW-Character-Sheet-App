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
    public class CharacterDetailNavigation : CharacterNavigationBase
    {
        public CharacterDetailNavigation(FFGCharacterViewModel character) : base(character) { }

        protected override List<BasePage> InitializePages()
        {
            return new List<BasePage>
            {
                new InfoDetailPage(ffgCharacterViewModel),
                new StatsDetailPage(ffgCharacterViewModel),
                new MotivationsDetailPage(ffgCharacterViewModel),
                new CharacterInventoryPage(ffgCharacterViewModel),
                new CharacterSkillsPage(ffgCharacterViewModel),
                new CharacterTalentsPage(ffgCharacterViewModel),
            };
        }

        protected override List<ToolbarItem> GetToolbarItems(BasePage page)
        {
            return new List<ToolbarItem>
            {
                new SettingsToolbarItem(page),
                new MainMenuToolbarItem(ffgCharacterViewModel, page),
                new EditCharacterToolbarItem(ffgCharacterViewModel, page),
            };
        }

    }
}
