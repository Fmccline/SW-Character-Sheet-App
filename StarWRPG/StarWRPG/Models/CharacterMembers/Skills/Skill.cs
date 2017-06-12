using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace StarWRPG.Models
{
    public abstract class Skill : CharacteristicAndSkillBase, INotifyPropertyChanged
    {
        public Characteristic Characteristic { get; set; }
        bool isCareer { get; set; }
        public bool IsCareer
        {
            get { return isCareer; }
            set
            {
                isCareer = value;
                OnPropertyChanged();
            }
        }
        public override string Name
        {
            get { return SkillName + " (" + Characteristic.ShortName + ")"; }
        }
        public override uint Rank
        {
            get { return rank; }
            set
            {
                rank = value;
                if (rank > maxRank)
                    rank = maxRank;
                OnPropertyChanged();
            }
        }
        protected abstract string SkillName { get; }

        protected Skill(Characteristic characteristic)
        {
            Characteristic = characteristic;
            IsCareer = false;
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged([CallerMemberName] string propertyName = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
