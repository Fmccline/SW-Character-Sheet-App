using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class HeadRinger : CriticalInjury
    {
        public HeadRinger()
        {
            D100Roll = "46-50";
            Severity = "Average";
            Result = "Head Ringer: The target increases the difficulty of all Intellect and Cunning checks by 1 until the end of the encounter.";
        }

    }
}
