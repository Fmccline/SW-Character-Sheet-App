using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public abstract class Gear : Item
    {
        uint hardPoints { get; set; }
        public uint HardPoints
        {
            get { return hardPoints; }
            set
            {
                hardPoints = value;
                OnPropertyChanged();
            }
        }

        public Gear()
        {
            HardPoints = 0;
        }
    }
}
