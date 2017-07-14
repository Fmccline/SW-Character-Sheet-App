using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class Distracted : CriticalInjury
    {
        public Distracted()
        {
            D100Roll = "16-20";
            Severity = "Easy";
            Result = "Distracted: The target cannot perform a free maneuver during his next turn.";
        }

    }
}
