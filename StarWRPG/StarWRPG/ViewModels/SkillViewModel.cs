using StarWRPG.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.ViewModels
{
    public class SkillViewModel : ViewModelBase
    {
        Skill skill;
        Experience xp;

        public Characteristic Characteristic
        {
            get { return skill.Characteristic; }
            set
            {
                skill.Characteristic = value;
                OnPropertyChanged();
            }
        }
        public bool IsCareer
        {
            get { return skill.IsCareer; }
            set
            {
                skill.IsCareer = value;
                OnPropertyChanged();
            }
        }
        public string Name
        {
            get { return skill.Name; }
        }
        public uint Rank
        {
            get { return skill.Rank; }
            set
            {
                skill.Rank = value;
                OnPropertyChanged();
            }
        }

        private bool isNotMax;
        private bool isNotMin;
        public bool IsNotMax
        {
            get { return isNotMax; }
            private set
            {
                isNotMax = value;
                OnPropertyChanged();
            }
        }
        public bool IsNotMin
        {
            get { return isNotMin; }
            private set
            {
                isNotMin = value;
                OnPropertyChanged();
            }
        }


        public SkillViewModel(Skill skill, Experience xp)
        {
            this.skill = skill;
            this.xp = xp;
            if (Rank > 0)
                isNotMin = true;
            else
                isNotMin = false;
            if (Rank < skill.MaxRank)
                isNotMax = true;
            else
                isNotMax = false;
        }

        public uint XPToNextRank()
        {
            // Page 102 of FaD book for this formula to calculate xp cost
            uint xpToNextRank = 5 * (Rank + 1);
            if (!IsCareer)
                xpToNextRank += 5;
            return xpToNextRank;
        }

        public uint XPToPreviousRank()
        {
            // Page 102 of FaD book for this formula to calculate xp cost
            uint xpToPreviousRank = 5 * Rank;
            if (!IsCareer)
                xpToPreviousRank += 5;
            return xpToPreviousRank;
        }

        public void DecreaseRank()
        {
            Rank -= 1;
            if (Rank == 0)
                IsNotMin = false;
            IsNotMax = true;
        }

        public void DecreaseRankWithXP()
        {
            xp.RefundXP(XPToPreviousRank());
            DecreaseRank();
        }

        public void IncreaseRank()
        {
            Rank += 1;
            if (Rank == skill.MaxRank)
                IsNotMax = false;
            IsNotMin = true;
        }

        public void IncreaseRankWithXP()
        {
            xp.SpendXP(XPToNextRank());
            IncreaseRank();
        }
    }
}
