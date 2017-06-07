using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{ 
    public class Experience
    {
        public uint TotalXP { get; private set; }
        public uint AvailableXP { get; private set; }

        public void AddXP(uint xp)
        {
            AvailableXP += xp;
            TotalXP += xp;
        }

        public void SpendXP(uint xp)
        {
            AvailableXP -= xp;
        }

        public Experience()
        {
            TotalXP = 0;
            AvailableXP = 0;
        }
    }
}
