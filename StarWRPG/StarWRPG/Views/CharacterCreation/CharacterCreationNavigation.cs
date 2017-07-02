using StarWRPG.Controls;
using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Xamarin.Forms;

namespace StarWRPG.Views
{
    public class CharacterCreationNavigation
    {
        public BasePage FirstPage { get { return pages.First(); } }
        List<BasePage> pages;

        public CharacterCreationNavigation(FFGCharacterViewModel character)
        {
            pages = new List<BasePage>
            {
                new CharacterInfoCreationPage(character),
                new CharacterInventoryCreationPage(character),
                new CharacterSkillsCreationPage(character),
                new CharacterTalentsCreationPage(character),
            };

            foreach (var page in pages)
            {
                var characterDetailSelection = new CharacterDetailsToolbarItem(pages, page);
                page.AddToolBarItem(characterDetailSelection);
            }
        }
    }
}