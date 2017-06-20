using StarWRPG.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.ViewModels
{
    public class SkillViewModel : ViewModelBase
    {
        Skill skill;

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

        public SkillViewModel(Skill skill)
        {
            this.skill = skill;
        }
    }
}
