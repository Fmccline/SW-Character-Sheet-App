using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    /// Invariants:
    ///     Defense and Soak are initialized
    class Armor : Gear
    {
        public Defense Defense { get; set; }
        public uint Soak { get; set; }

        public Armor()
        {
            Defense = new Defense();
            Soak = 0;
        }
    }
}
