using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class Stinger : CriticalInjury
    {
        public Stinger()
        {
            D100Roll = "36-40";
            Severity = "Easy";
            Result = "Stinger: Increase difficulty of next check by one.";
        }

    }
}
