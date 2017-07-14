using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class KnockedSenseless : CriticalInjury
    {
        public KnockedSenseless()
        {
            D100Roll = "121-125";
            Severity = "Hard";
            Result = "Knocked Senseless: The target is staggered for the remainder of the encounter.";
        }

    }
}
