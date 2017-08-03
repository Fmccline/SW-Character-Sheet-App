using StarWRPG.Controls;
using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Xamarin.Forms;

namespace StarWRPG.Views
{
    public class CharacterCreationNavigation : CharacterNavigationBase
    {
        public CharacterCreationNavigation(FFGCharacterViewModel character) : base(character) { }

        protected override List<BasePage> InitializePages()
        {
            return new List<BasePage>
            {
                new InfoCreationPage(ffgCharacterViewModel),
                new StatsCreationPage(ffgCharacterViewModel),
                new CharacterInventoryPage(ffgCharacterViewModel),
                new MotivationsCreationPage(ffgCharacterViewModel),
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
                new SaveCharacterToolbarItem(ffgCharacterViewModel, page),
            };
        }
    }
}