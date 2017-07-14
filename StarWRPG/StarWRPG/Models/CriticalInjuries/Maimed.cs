using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class Maimed : CriticalInjury
    {
        public Maimed()
        {
            D100Roll = "101-105";
            Severity = "Hard";
            Result = "Maimed: One of the target's limbs (selected by the GM) is permanently lost. Unless the target has " +
                        "a cybernetic replacement, the target cannot perform actions that would require the use of that limb. " +
                        "all other actions gain 1 setback.";
        }

    }
}
