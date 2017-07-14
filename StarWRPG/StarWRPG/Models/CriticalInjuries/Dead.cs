using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class Dead : CriticalInjury
    {
        public Dead()
        {
            D100Roll = "151+";
            Severity = "-";
            Result = "Dead: Complete, obliterated death.";
        }

    }
}
