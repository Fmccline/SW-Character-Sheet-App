using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class MinorNick : CriticalInjury
    {
        public MinorNick()
        {
            D100Roll = "01-05";
            Severity = "Easy";
            Result = "Minor Nick: The target suffers 1 strain.";
        }

    }
}
