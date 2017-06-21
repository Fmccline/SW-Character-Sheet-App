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

        public void GainXP(uint xp)
        {
            AvailableXP += xp;
            TotalXP += xp;
        }

        public void RefundXP(uint xp)
        {
            AvailableXP += xp;
        }

        public void SpendXP(uint xp)
        {
            if (AvailableXP >= xp)
                AvailableXP -= xp;
            else
                AvailableXP = 0;
        }

        public Experience() : this(0) { }

        public Experience(uint xp)
        {
            TotalXP = xp;
            AvailableXP = xp;
        }
    }
}
