using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class TemorarilyLame : CriticalInjury
    {
        public TemorarilyLame()
        {
            D100Roll = "111-115";
            Severity = "Hard";
            Result = "Temorarily Lame: Until this injury is healed, the target cannot perform more than 1 maneuver during his turn.";
        }

    }
}
