using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models.CriticalInjuries
{
    public class ScatteredSenses : CriticalInjury
    {
        public ScatteredSenses()
        {
            D100Roll = "66-70";
            Severity = "Average";
            Result = "Scattered Senses: The target removes all boost dice from skill checks until the end of the encounter.";
        }

    }
}
