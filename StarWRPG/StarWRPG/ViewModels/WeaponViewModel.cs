using StarWRPG.Models;

namespace StarWRPG.ViewModels
{
    class WeaponViewModel : ItemViewModel
    {
        public Weapon Weapon { get; set; }
        public uint Crit
        {
            get { return Weapon.Crit; }
            set
            {
                Weapon.Crit = value;
                OnPropertyChanged();
            }
        }
        public uint Damage
        {
            get { return Weapon.Damage; }
            set
            {
                Weapon.Damage = value;
                OnPropertyChanged();
            }
        }
        public string Range
        {
            get { return Weapon.Range; }
            set
            {
                Weapon.Range = value;
                OnPropertyChanged();
            }
        }
        public string Special
        {
            get { return Weapon.Special; }
            set
            {
                Weapon.Special = value;
                OnPropertyChanged();
            }
        }
        public string Skill
        {
            get { return Weapon.Skill; }
            set
            {
                Weapon.Skill = value;
                OnPropertyChanged();
            }
        }

        public override string Details
        {
            get { return Name + " / " + Damage + " / " + Skill + " / " + Range; }
        }
    }
}
