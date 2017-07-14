using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class HorrificInjury : CriticalInjury
    {
        public HorrificInjury()
        {
            D100Roll = "106-110";
            Severity = "Hard";
            Result = "Horrific Injury: Roll 1d10 to determine which of the target's characteristics is affected. 1-3 (Br), 4-6 (Ag), " +
                        "7 (Int), 8 (Cun), 9 (Pr), 10 (Will). Until this injury is healed, reduce that characteristic by 1.";
        }

    }
}
