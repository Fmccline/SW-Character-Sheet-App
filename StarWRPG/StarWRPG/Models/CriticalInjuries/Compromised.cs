using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class Compromised : CriticalInjury
    {
        public Compromised()
        {
            D100Roll = "86-90";
            Severity = "Average";
            Result = "Compromised: Increase the difficulty of all skill checks by 1 until the end of the encounter.";
        }

    }
}
