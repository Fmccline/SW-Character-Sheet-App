using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class FearsomeWound : CriticalInjury
    {
        public FearsomeWound()
        {
            D100Roll = "51-55";
            Severity = "Average";
            Result = "Fearsome Wound: The target increases the difficulty of all Presence and Willpower checks by 1 until the end of the encounter.";
        }

    }
}
