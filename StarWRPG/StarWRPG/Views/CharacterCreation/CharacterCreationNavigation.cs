using StarWRPG.Controls;
using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Xamarin.Forms;

namespace StarWRPG.Views
{
    public class CharacterCreationNavigation : CharacterNavigation
    {
        public CharacterCreationNavigation(FFGCharacterViewModel character) : base(character) { }

        protected override List<BasePage> InitializePages()
        {
            return new List<BasePage>
            {
                new CharacterInfoCreationPage(ffgCharacterViewModel),
                new CharacterInventoryPage(ffgCharacterViewModel),
                new CharacterMotivationsPage(ffgCharacterViewModel),
                new CharacterSkillsPage(ffgCharacterViewModel),
                new CharacterTalentsPage(ffgCharacterViewModel),
            };
        }

        protected override List<ToolbarItem> InitializeToolbarItems(BasePage page)
        {
            return new List<ToolbarItem>
            {
                new SaveCharacterToolbarItem(ffgCharacterViewModel, page),
                new CharacterDetailsToolbarItem(pages, page),
            };
        }
    }
}