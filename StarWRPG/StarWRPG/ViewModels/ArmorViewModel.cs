using StarWRPG.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.ViewModels
{
    public class ArmorViewModel : ItemViewModel
    {
        public Armor Armor;

        public uint RangedDefense
        {
            get { return Armor.RangedDefense; }
            set
            {
                Armor.RangedDefense = value;
                OnPropertyChanged();
            }
        }
        public uint MeleeDefense
        {
            get { return Armor.MeleeDefense; }
            set
            {
                Armor.MeleeDefense = value;
                OnPropertyChanged();
            }
        }
        public uint Soak
        {
            get { return Armor.Soak; }
            set
            {
                Armor.Soak = value;
                OnPropertyChanged();
            }
        }

        public ArmorViewModel()
        {
            Armor = new Armor();
            Item = Armor;
        }

        public ArmorViewModel(Armor armor) : base(armor)
        {
            Armor = armor;
        }
    }
}
