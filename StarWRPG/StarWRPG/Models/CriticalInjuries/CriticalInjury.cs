using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class CriticalInjury
    {
        public string Severity { get; set; }
        public string Result { get; set; }
        public string D100Roll { get; set; }

        public CriticalInjury()
        {
            Severity = "";
            Result = "";
            D100Roll = "";
        }
    }
}
