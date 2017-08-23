using StarWRPG.Helpers;
using StarWRPG.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace StarWRPG.ViewModels
{
    public class SkillViewModel : ViewModelBase
    {
        bool[] hasDice;
        Characteristics characteristics;
        Experience xp;
        string[] imageSourceForDice;

        public Skill Skill;
        public Characteristic Characteristic
        {
            get { return Skill.Characteristic; }
            set
            {
                Skill.Characteristic = value;
                CalculateDicePool();
                OnPropertyChanged();
                OnPropertyChanged(nameof(CharacteristicName));
                OnPropertyChanged(nameof(Name));
            }
        }

        public bool CanDelete
        {
            get
            {
                return (Skill.GetType() == typeof(CustomSkill));
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
        public bool UseXP
        {
            get { return UserSettings.UseXPForSkills; }
            set
            {
                UserSettings.UseXPForSkills = value;
                OnPropertyChanged();
            }
        }
        public bool[] HasDice
        {
            get { return hasDice; }
            set
            {
                hasDice = value;
                OnPropertyChanged();
            }
        }

        public string CharacteristicName
        {
            get { return Characteristic.Name; }
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
        public string SkillName
        {
            get { return Skill.SkillName; }
        }
        public string[] ImageSourceForDice
        {
            get { return imageSourceForDice; }
            set
            {
                imageSourceForDice = value;
                OnPropertyChanged();
            }
        }
        public List<string> SkillUses
        {
            get { return Skill.SkillUses; }
            set
            {
                Skill.SkillUses = value;
                OnPropertyChanged();
            }
        }

        public uint AvailableXP
        {
            get { return xp.AvailableXP; }
            set
            {
                xp.AvailableXP = value;
                OnPropertyChanged();
            }
        }
        public uint TotalXP
        {
            get { return xp.TotalXP; }
            set
            {
                xp.TotalXP = value;
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
        public uint MaxRank
        {
            get { return Skill.MaxRank; }
        }

        public SkillViewModel(Skill skill, Characteristics characteristics, Experience xp)
        {
            Skill = skill;
            this.characteristics = characteristics;
            this.xp = xp;
            CalculateDicePool();
        }

        public void CalculateDicePool()
        {
            ImageSourceForDice = new string[7];
            HasDice = new bool[7];

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
                    Characteristic = characteristics.Agility;
                    break;
                case BRAWN:
                    Characteristic = characteristics.Brawn;
                    break;
                case CUNNING:
                    Characteristic = characteristics.Cunning;
                    break;
                case INTELLECT:
                    Characteristic = characteristics.Intellect;
                    break;
                case PRESENCE:
                    Characteristic = characteristics.Presence;
                    break;
                case WILLPOWER:
                    Characteristic = characteristics.Willpower;
                    break;
            }
        }

        public void RankUpWithXP()
        {
            AvailableXP -= XPToRank(++Rank);
        }

        public void RankDownWithXP()
        {
            AvailableXP += XPToRank(Rank--);
        }

        public bool CanRankUp()
        {
            return ((XPToRank(Rank + 1) <= AvailableXP) && (Rank + 1 <= MaxRank));
        }
        
        public uint XPToRank(uint rank)
        {
            return (IsCareer) ? 5 * rank : (5 * rank) + 5;
        }
    }
}
