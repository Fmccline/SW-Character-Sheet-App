using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class BowledOver : CriticalInjury
    {
        public BowledOver()
        {
            D100Roll = "41-45";
            Severity = "Average";
            Result = "Bowled Over: The target is knocked prone and suffers 1 strain.";
        }

    }
}
