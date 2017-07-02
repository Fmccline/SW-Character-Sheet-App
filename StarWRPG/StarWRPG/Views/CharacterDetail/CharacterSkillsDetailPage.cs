using StarWRPG.Controls;
using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Xamarin.Forms;

namespace StarWRPG.Views
{
    public class CharacterSkillsDetailPage : CharacterSkillsPage
    {
        public CharacterSkillsDetailPage(FFGCharacterViewModel character) : base(character)
        {
            mainStackLayout.Children.Insert(0, new CharacterDetailNavigationButtons(character, GetType()));
            ToolbarItems.Add(new EditCharacterToolbarItem(character, this));
        }

    }
}