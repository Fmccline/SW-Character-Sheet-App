using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace StarWRPG.Models
{
	public abstract class Skill : CharacteristicOrSkill, INotifyPropertyChanged
	{
        bool isCareer { get; set; }

        public Characteristic Characteristic { get; set; }
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
        public abstract string SkillName { get; }
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
