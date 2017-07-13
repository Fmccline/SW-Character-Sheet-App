using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class BleedingOut : CriticalInjury
    {
        public BleedingOut()
        {
            D100Roll = "131-140";
            Severity = "Daunting";
            Result = "Bleeding Out: Every round the target suffers 1 wound and 1 strain at the beginning of his turn. For every 5 wounds he suffers " +
                        "beyond his wound threshold, he suffers 1 additional Critical Injury (if the additional injury is this one, roll again).";
        }

    }
}
