using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class DiscouragingWound : CriticalInjury
    {
        public DiscouragingWound()
        {
            D100Roll = "26-30";
            Severity = "Easy";
            Result = "Discouraging Wound: Flip one light side Destiny Point to a dark side Destiny Point.";
        }

    }
}
