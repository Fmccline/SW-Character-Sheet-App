using StarWRPG.Models;
using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG
{
    public class ViewModelFactory
    {
        public FFGCharacter FFGCharacter { private get; set; }

        public ViewModelFactory(FFGCharacter character)
        {
            FFGCharacter = character;
        }

        public FFGCharacterViewModel ffgCharacterViewModel()
        {
            return new FFGCharacterViewModel(FFGCharacter);
        }

        public InventoryViewModel InventoryViewModel()
        {
            return new InventoryViewModel(FFGCharacter.Inventory);
        }
    }
}
