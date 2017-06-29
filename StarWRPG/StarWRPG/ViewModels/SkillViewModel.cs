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
        public Skill Skill;
        Characteristics characteristics;
        Experience xp;

        public Characteristic Characteristic
        {
            get { return Skill.Characteristic; }
            set
            {
                Skill.Characteristic = value;
                CalculateDicePool();
                OnPropertyChanged();
            }
        }
        public bool CanSetCharacteristic
        {
            get { return Skill.CanSetCharacteristic; }
        }
        public bool IsCareer
        {
            get { return Skill.IsCareer; }
            set
            {
                Skill.IsCareer = value;
                OnPropertyChanged();
            }
        }
        public string Name
        {
            get { return Skill.Name; }
            set
            {
                Skill.Name = value;
                OnPropertyChanged();
            }
        }
        public uint Rank
        {
            get { return Skill.Rank; }
            set
            {
                Skill.Rank = value;
                CalculateDicePool();
                OnPropertyChanged();
            }
        }

        string characteristicName;
        public string CharacteristicName
        {
            get { return characteristicName; }
            set
            {
                characteristicName = value;
                Name = Skill.Name;
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

        private bool[] hasDice;
        public bool[] HasDice
        {
            get { return hasDice; }
            set
            {
                hasDice = value;
                OnPropertyChanged();
            }
        }

        private string[] imageSourceForDice;
        public string[] ImageSourceForDice
        {
            get { return imageSourceForDice; }
            set
            {
                imageSourceForDice = value;
                OnPropertyChanged();
            }
        }

        public SkillViewModel(Skill skill, Characteristics characteristics, Experience xp)
        {
            Skill = skill;
            this.characteristics = characteristics;
            CharacteristicName = Characteristic.Name;
            this.xp = xp;

            isNotMin = (Rank > 0) ? true : false;
            isNotMax = (Rank < skill.MaxRank) ? true : false;

            CalculateDicePool();
        }

        public void CalculateDicePool()
        {
            ImageSourceForDice = new string[6];
            HasDice = new bool[6];

            uint greenDice, yellowDice;
            uint larger = Math.Max(Rank, Characteristic.Rank);
            uint smaller = Math.Min(Rank, Characteristic.Rank);

            yellowDice = smaller;
            greenDice = larger - smaller;

            for (int index = 0; index < ImageSourceForDice.Length; ++index)
            {
                if (greenDice > 0)
                {
                    ImageSourceForDice[index] = "green_die.png";
                    HasDice[index] = true;
                    --greenDice;
                }
                else if (yellowDice > 0)
                {
                    ImageSourceForDice[index] = "yellow_die.png";
                    HasDice[index] = true;
                    --yellowDice;
                }
                else
                {
                    HasDice[index] = false;
                    ImageSourceForDice[index] = null;
                }
            }
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
                    Skill.Characteristic = characteristics.Agility;
                    break;
                case BRAWN:
                    Skill.Characteristic = characteristics.Brawn;
                    break;
                case CUNNING:
                    Skill.Characteristic = characteristics.Cunning;
                    break;
                case INTELLECT:
                    Skill.Characteristic = characteristics.Intellect;
                    break;
                case PRESENCE:
                    Skill.Characteristic = characteristics.Presence;
                    break;
                case WILLPOWER:
                    Skill.Characteristic = characteristics.Willpower;
                    break;
            }
            CharacteristicName = characteristicType;
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
            if (Rank == Skill.MaxRank)
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
