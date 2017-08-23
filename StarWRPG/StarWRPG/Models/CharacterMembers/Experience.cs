using StarWRPG.Helpers;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace StarWRPG.Models
{ 
    public class Experience
    {
        uint totalXP;
        uint availableXP;
        public uint TotalXP
        {
            get { return totalXP; }
            set
            {
                totalXP = value;
                SendXPChanged();
            }
        }
        public uint AvailableXP
        {
            get { return availableXP; }
            set
            {
                availableXP = value;
                SendXPChanged();
            }
        }

        private void SendXPChanged()
        {
            try
            {
                MessagingCenter.Send(this, MessagingCenterMessages.ExperienceChanged);
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.StackTrace);
                Debug.WriteLine(ex.Message);
            }
        }

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
