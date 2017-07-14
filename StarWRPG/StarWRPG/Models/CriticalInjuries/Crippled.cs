using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class Crippled : CriticalInjury
    {
        public Crippled()
        {
            D100Roll = "96-100";
            Severity = "Hard";
            Result = "Crippled: One of the target's limbs (selected by the GM) is impaired until healed or replaced. " +
                        "Increase difficulty of all checks that require use of that limb by 1.";
        }

    }
}
