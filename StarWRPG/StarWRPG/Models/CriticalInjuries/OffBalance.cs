using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class OffBalance : CriticalInjury
    {
        public OffBalance()
        {
            D100Roll = "21-25";
            Severity = "Easy";
            Result = "Off-Balance: Add 1 setback to the target's next skill check.";
        }

    }
}
