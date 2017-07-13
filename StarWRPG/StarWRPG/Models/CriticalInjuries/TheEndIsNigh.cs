using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class TheEndIsNigh : CriticalInjury
    {
        public TheEndIsNigh()
        {
            D100Roll = "141-150";
            Severity = "Daunting";
            Result = "The End is Nigh: The target will die after the last Initiative slot during the next round.";
        }

    }
}
