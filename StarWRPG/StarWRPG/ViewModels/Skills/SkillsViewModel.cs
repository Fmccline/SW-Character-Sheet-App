using StarWRPG.Models;
using System.Collections.ObjectModel;

namespace StarWRPG.ViewModels
{
    public class SkillsViewModel : ViewModelBase
    {
        public ObservableCollection<SkillViewModel> Skills { get; private set; }
        ObservableCollection<Skill> skills { get; set; }

        public SkillsViewModel(ObservableCollection<Skill> s)
        {
            skills = s;
            Skills = new ObservableCollection<SkillViewModel>();
            foreach (Skill skill in skills)
            {
                Skills.Add(new SkillViewModel(skill));
            }
        }

        public void AddSkill(SkillViewModel skill)
        {
            skills.Add(skill.Skill);
            Skills.Add(skill);
        }

        public void RemoveSkill(SkillViewModel skill)
        {
            skills.Remove(skill.Skill);
            Skills.Remove(skill);
        }

    }
}
