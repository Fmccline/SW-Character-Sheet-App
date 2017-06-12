using StarWRPG.Models;

namespace StarWRPG.ViewModels
{
    public class SkillViewModel : ViewModelBase
    {
        public Skill Skill { get; private set; }

        public string Name
        {
            get { return Skill.Name; }
        }
        public uint Rank
        {
            get { return Skill.Rank; }
            set
            {
                Skill.Rank = value;
                OnPropertyChanged();
            }
        }
        public bool IsCareer
        {
            get { return Skill.IsCareer; }
            set
            {
                Skill.IsCareer = value;
            }
        }

        public SkillViewModel(Skill skill)
        {
            Skill = skill;
        }
    }
}
