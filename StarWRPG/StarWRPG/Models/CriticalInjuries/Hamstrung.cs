using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class Hamstrung : CriticalInjury
    {
        public Hamstrung()
        {
            D100Roll = "71-75";
            Severity = "Average";
            Result = "Hamstrung: The target loses his free maneuver until the end of the encounter.";
        }

    }
}
