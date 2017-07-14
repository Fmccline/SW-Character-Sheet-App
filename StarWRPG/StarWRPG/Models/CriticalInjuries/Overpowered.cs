using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class Overpowered : CriticalInjury
    {
        public Overpowered()
        {
            D100Roll = "76-80";
            Severity = "Average";
            Result = "Overpowered: The target leaves himself open, and the attacker may immediately attempt another free attack " +
                        "against him, using the exact same pool as the original attack.";
        }

    }
}
