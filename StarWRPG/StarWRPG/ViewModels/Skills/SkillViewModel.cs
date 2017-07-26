﻿using StarWRPG.Models;
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
        bool useXP;
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
        public bool NotEnoughXP { get; set; }
        public bool UseXP
        {
            get { return useXP; }
            set
            {
                useXP = value;
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
        }
        public uint Rank
        {
            get { return Skill.Rank; }
            set
            {
                if (UseXP)
                {
                    if (value > Skill.Rank && CanRankUp(value))
                    {
                        SpendXPToRankUp(value);
                        SetRank(value);
                    }
                    else if (value < Skill.Rank)
                    {
                        GainXPToRankDown(value);
                        SetRank(value);
                    }
                    else
                    {
                        NotEnoughXP = true;
                        OnPropertyChanged();
                    }
                }
                else
                {
                    SetRank(value);
                }
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

        public bool CanRankUp(uint newRank)
        {
            return (XPToRank(newRank) <= AvailableXP);
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

        public void GainXPToRankDown(uint newRank)
        {
            AvailableXP += XPToRank(newRank + 1);
        }

        public void SpendXPToRankUp(uint newRank)
        {
            AvailableXP -= XPToRank(newRank);
        }

        public uint XPToRank(uint rank)
        {
            return (IsCareer) ? 5 * rank : (5 * rank) + 5;
        }

        public void SetRank(uint rank)
        {
            Skill.Rank = rank;
            CalculateDicePool();
            OnPropertyChanged("Rank");
        }
    }
}