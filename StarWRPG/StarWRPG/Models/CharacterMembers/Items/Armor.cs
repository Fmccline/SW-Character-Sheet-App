using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    /// Invariants:
    ///     Defense and Soak are initialized
    public class Armor : Gear
    {
        uint rangedDefense { get; set; }
        uint meleeDefense { get; set; }
        uint soak { get; set; }

        public uint RangedDefense
        {
            get { return rangedDefense; }
            set
            {
                rangedDefense = value;
                OnPropertyChanged();
            }
        }
        public uint MeleeDefense
        {
            get { return meleeDefense; }
            set
            {
                meleeDefense = value;
                OnPropertyChanged();
            }
        }
        public uint Soak
        {
            get { return soak; }
            set
            {
                soak = value;
                OnPropertyChanged();
            }
        }

        public Armor()
        {
            RangedDefense = 0;
            MeleeDefense = 0;
            Soak = 0;
        }
    }
}
