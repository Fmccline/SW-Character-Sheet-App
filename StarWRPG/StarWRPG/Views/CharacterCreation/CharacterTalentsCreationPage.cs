using StarWRPG.Controls;
using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Xamarin.Forms;

namespace StarWRPG.Views
{
    public class CharacterTalentsCreationPage : CharacterTalentsPage
    {
        public CharacterTalentsCreationPage(FFGCharacterViewModel character) : base(character)
        {
            ToolbarItems.Add(new SaveCharacterToolbarItem(character, this));
        }
    }
}