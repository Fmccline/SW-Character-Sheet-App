using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    abstract class Gear : Item
    {
        public uint HardPoints { get; set; }

        public Gear()
        {
            HardPoints = 0;
        }
    }
}
