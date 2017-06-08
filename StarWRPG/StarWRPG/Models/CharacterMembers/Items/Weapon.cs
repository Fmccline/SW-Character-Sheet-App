using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class Weapon : Gear
    {
        public uint Crit { get; set; }
        public uint Damage { get; set; }
        public string Range { get; set; }
        public string Special { get; set; }
        public string Skill { get; set; }

        public Weapon()
        {
            Crit = 0;
            Damage = 0;
        }
    }
}
