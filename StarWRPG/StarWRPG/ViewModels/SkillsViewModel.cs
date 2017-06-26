using StarWRPG.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.ViewModels
{
    public class SkillsViewModel : ViewModelBase
    {
        public ObservableCollection<SkillViewModel> SkillViewModels { get; private set; }
        ObservableCollection<Skill> skills;

        Characteristics characteristics;
        Experience xp;

        public uint AvailableXP
        {
            get { return xp.AvailableXP; }
        }
        public uint TotalXP
        {
            get { return xp.TotalXP; }
        }

        public SkillsViewModel(ObservableCollection<Skill> skills, Characteristics characteristics, Experience xp)
        {
            this.skills = skills;
            this.characteristics = characteristics;
            this.xp = xp;
            SkillViewModels = new ObservableCollection<SkillViewModel>();
            foreach (var skill in this.skills)
            {
                SkillViewModels.Add(new SkillViewModel(skill, characteristics, xp));
            }
        }

        public void AddSkill(SkillViewModel skill)
        {
            SkillViewModels.Add(skill);
            skills.Add(skill.Skill);
        }

        public void RemoveSkill(SkillViewModel skill)
        {
            SkillViewModels.Remove(skill);
            skills.Remove(skill.Skill);
        }
    }
}
