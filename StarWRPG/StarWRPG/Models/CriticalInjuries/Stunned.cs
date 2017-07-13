using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class Stunned : CriticalInjury
    {
        public Stunned()
        {
            D100Roll = "31-35";
            Severity = "Easy";
            Result = "Stunned: The target is staggered until the end of his turn.";
        }

    }
}
