using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public abstract class Gear : Item
    {
        public uint HardPoints { get; set; }
    }
}
