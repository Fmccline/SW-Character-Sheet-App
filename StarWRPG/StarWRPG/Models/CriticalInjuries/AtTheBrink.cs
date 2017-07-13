using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class AtTheBrink : CriticalInjury
    {
        public AtTheBrink()
        {
            D100Roll = "91-95";
            Severity = "Hard";
            Result = "At the Brink: The target suffers 1 strain each time he performs an action.";
        }

    }
}
