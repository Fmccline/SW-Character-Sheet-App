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
        public FaDCharacter FaDCharacter { private get; set; }

        public ViewModelFactory(FaDCharacter character)
        {
            FaDCharacter = character;
        }

        public FaDCharacterViewModel FaDCharacterViewModel()
        {
            return new FaDCharacterViewModel(FaDCharacter);
        }

        public InventoryViewModel InventoryViewModel()
        {
            return new InventoryViewModel(FaDCharacter.Inventory);
        }

        public SkillsViewModel SkillsViewModel()
        {
            return new SkillsViewModel(FaDCharacter.Skills);
        }
    }
}
