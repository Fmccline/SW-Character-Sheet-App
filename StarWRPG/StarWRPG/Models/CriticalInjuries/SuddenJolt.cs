using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class SuddenJolt : CriticalInjury
    {
        public SuddenJolt()
        {
            D100Roll = "11-15";
            Severity = "Easy";
            Result = "Sudden Jolt: The target drops whatever is in hand.";
        }

    }
}
