using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class Winded : CriticalInjury
    {
        public Winded()
        {
            D100Roll = "81-85";
            Severity = "Average";
            Result = "Winded: Until the end of the encounter, the target cannot voluntarily suffer strain to activate any abilities or gain " +
                        "additional maneuvers.";
        }

    }
}
