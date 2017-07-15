using StarWRPG.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.ViewModels
{
    public class WeaponViewModel : ItemViewModel
    {
        public Weapon Weapon;

        public uint Crit
        {
            get { return Weapon.Crit; }
            set
            {
                Weapon.Crit = value;
                OnPropertyChanged();
            }
        }
        public uint Damage
        {
            get { return Weapon.Damage; }
            set
            {
                Weapon.Damage = value;
                OnPropertyChanged();
            }
        }
        public uint HardPoints
        {
            get { return Weapon.HardPoints; }
            set
            {
                Weapon.HardPoints = value;
                OnPropertyChanged();
            }
        }
        public string Range
        {
            get { return Weapon.Range; }
            set
            {
                Weapon.Range = value;
                OnPropertyChanged();
            }
        }
        public string Special
        {
            get { return Weapon.Special; }
            set
            {
                Weapon.Special = value;
                OnPropertyChanged();
            }
        }
        public string Skill
        {
            get { return Weapon.Skill; }
            set
            {
                Weapon.Skill = value;
                OnPropertyChanged();
            }
        }

        public WeaponViewModel()
        {
            Weapon = new Weapon();
            Item = Weapon;
        }

        public WeaponViewModel(Weapon weapon) : base(weapon)
        {
            Weapon = weapon;
        }
    }
}
