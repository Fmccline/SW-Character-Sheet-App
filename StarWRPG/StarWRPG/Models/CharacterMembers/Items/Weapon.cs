using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class Weapon : Gear
    {
        uint crit { get; set; }
        uint damage { get; set; }
        string range { get; set; }
        string special { get; set; }
        string skill { get; set; }

        public uint Crit
        {
            get { return crit; }
            set
            {
                crit = value;
                OnPropertyChanged();
            }
        }
        public uint Damage
        {
            get { return damage; }
            set
            {
                damage = value;
                OnPropertyChanged();
            }
        }
        public string Range
        {
            get { return range; }
            set
            {
                range = value;
                OnPropertyChanged();
            }
        }
        public string Special
        {
            get { return special; }
            set
            {
                special = value;
                OnPropertyChanged();
            }
        }
        public string Skill
        {
            get { return skill; }
            set
            {
                skill = value;
                OnPropertyChanged();
            }
        }

        public Weapon()
        {
            Crit = 0;
            Damage = 0;
        }
    }
}
