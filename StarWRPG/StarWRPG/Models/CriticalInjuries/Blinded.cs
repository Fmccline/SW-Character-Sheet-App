using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class Blinded : CriticalInjury
    {
        public Blinded()
        {
            D100Roll = "116-120";
            Severity = "Hard";
            Result = "Blinded: The target can no longer see. Upgrade the difficulty of all checks twice. Upgrade the difficulty of " +
                        "Perception and Vigilance checks three times.";
        }

    }
}
