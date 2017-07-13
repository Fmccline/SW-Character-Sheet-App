using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class SlowedDown : CriticalInjury
    {
        public SlowedDown()
        {
            D100Roll = "06-10";
            Severity = "Easy";
            Result = "Slowed Down: The target can only act during the last allied Initiative slot on his next turn.";
        }

    }
}
