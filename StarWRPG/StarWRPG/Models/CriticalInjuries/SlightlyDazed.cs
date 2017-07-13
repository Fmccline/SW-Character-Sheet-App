using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class SlightlyDazed : CriticalInjury
    {
        public SlightlyDazed()
        {
            D100Roll = "61-65";
            Severity = "Average";
            Result = "Slightly Dazed: The target is disoriented until the end of the encounter.";
        }

    }
}
