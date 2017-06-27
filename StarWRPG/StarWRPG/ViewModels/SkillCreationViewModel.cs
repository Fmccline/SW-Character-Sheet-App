using StarWRPG.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.ViewModels
{
    public class SkillCreationViewModel : ViewModelBase
    {
        Characteristics characteristics;
        Characteristic characteristic;
        Experience xp;

        string name;

        public string CharacteristicName
        {
            get { return characteristic.Name; }
        }
        public string Name
        {
            get { return name; }
            set
            {
                name = value;
                OnPropertyChanged();
            }
        }

        public SkillCreationViewModel(Characteristics characteristics, Experience xp)
        {
            this.characteristics = characteristics;
            this.xp = xp;
            characteristic = characteristics.Agility;
        }

        public void ChangeCharacteristic(string characteristicType)
        {
            const string AGILITY = "Agility";
            const string BRAWN = "Brawn";
            const string CUNNING = "Cunning";
            const string INTELLECT = "Intellect";
            const string PRESENCE = "Presence";
            const string WILLPOWER = "Willpower";

            switch (characteristicType)
            {
                case AGILITY:
                    characteristic = characteristics.Agility;
                    break;
                case BRAWN:
                    characteristic = characteristics.Brawn;
                    break;
                case CUNNING:
                    characteristic = characteristics.Cunning;
                    break;
                case INTELLECT:
                    characteristic = characteristics.Intellect;
                    break;
                case PRESENCE:
                    characteristic = characteristics.Presence;
                    break;
                case WILLPOWER:
                    characteristic = characteristics.Willpower;
                    break;
            }
            OnPropertyChanged("CharacteristicName");
        }

        public SkillViewModel MakeCustomSkill()
        {
            var skill = new CustomSkill(characteristic, Name);
            var skillViewModel = new SkillViewModel(skill, characteristics, xp);
            return skillViewModel;
        }
    }
}
