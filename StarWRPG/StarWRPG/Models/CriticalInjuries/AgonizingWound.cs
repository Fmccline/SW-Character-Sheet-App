using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class AgonizingWound : CriticalInjury
    {
        public AgonizingWound()
        {
            D100Roll = "56-60";
            Severity = "Average";
            Result = "Agonizing Wound: The target increases the difficulty of all Brawn and Agility checks by 1 until the end of the encounter.";
        }

    }
}
