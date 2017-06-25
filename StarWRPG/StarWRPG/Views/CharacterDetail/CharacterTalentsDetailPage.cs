using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using StarWRPG.ViewModels;
using StarWRPG.Controls;

namespace StarWRPG.Views
{
    class CharacterTalentsDetailPage : CharacterTalentsPage
    {
        public CharacterTalentsDetailPage(FaDCharacterViewModel character) : base(character)
        {
            mainStackLayout.Children.Insert(0, new CharacterDetailNavigationButtons(character, GetType()));
            ToolbarItems.Add(new EditCharacterToolbarItem(character, this));
        }
    }
}
