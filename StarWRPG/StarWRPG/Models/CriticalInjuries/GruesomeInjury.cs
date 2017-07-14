using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class GruesomeInjury : CriticalInjury
    {
        public GruesomeInjury()
        {
            D100Roll = "126-130";
            Severity = "Daunting";
            Result = "Gruesome Injury: Roll 1d10 to determine which of the target's characteristics is affected. 1-3 (Br), 4-6 (Ag), " +
                        "7 (Int), 8 (Cun), 9 (Pr), 10 (Will). That characteristic is permanently reduced by 1 to a minimum of 1.";
        }

    }
}
