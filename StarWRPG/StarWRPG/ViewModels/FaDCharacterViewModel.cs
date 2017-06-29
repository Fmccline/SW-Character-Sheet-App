using StarWRPG.Models;
using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using Xamarin.Forms;

namespace StarWRPG.ViewModels
{
    public class FaDCharacterViewModel : ViewModelBase
    {
        public FaDCharacter FaDCharacter { get; private set; }

        public CriticalInjuriesViewModel CriticalInjuriesViewModel { get; private set; }
        public InventoryViewModel InventoryViewModel { get; private set; }
        public TalentsViewModel TalentsViewModel { get; private set; }
        public SkillsViewModel SkillsViewModel { get; private set; }

        public string Background
        {
            get { return FaDCharacter.Background; }

            set
            {
                FaDCharacter.Background = value;
                OnPropertyChanged();
            }
        }
        public string Career
        {
            get { return FaDCharacter.Career; }

            set
            {
                FaDCharacter.Career = value;
                OnPropertyChanged();
            }
        }
        public string Description
        {
            get { return FaDCharacter.Description; }

            set
            {
                FaDCharacter.Description = value;
                OnPropertyChanged();
            }
        }
        public string EmotionalStrengths
        {
            get { return FaDCharacter.EmotionalStrengths; }
            set
            {
                FaDCharacter.EmotionalStrengths = value;
                OnPropertyChanged();
            }
        }
        public string EmotionalWeaknesses
        {
            get { return FaDCharacter.EmotionalWeaknesses; }
            set
            {
                FaDCharacter.EmotionalWeaknesses = value;
                OnPropertyChanged();
            }
        }
        public string Motivation
        {
            get { return FaDCharacter.Motivation; }
            set
            {
                FaDCharacter.Motivation = value;
                OnPropertyChanged();
            }
        }
        public string Name
        {
            get { return FaDCharacter.Name; }

            set
            {
                FaDCharacter.Name = value;
                OnPropertyChanged();
            }
        }
        public string SpecializationTrees
        {
            get { return FaDCharacter.SpecializationTrees; }

            set
            {
                FaDCharacter.SpecializationTrees = value;
                OnPropertyChanged();
            }
        }
        public string Species
        {
            get { return FaDCharacter.Species; }

            set
            {
                FaDCharacter.Species = value;
                OnPropertyChanged();
            }
        }

        public uint Agility
        {
            get { return FaDCharacter.Characteristics.Agility.Rank; }

            set
            {
                FaDCharacter.Characteristics.Agility.Rank = value;
                SetSkillsCharacteristic(FaDCharacter.Characteristics.Agility);
                OnPropertyChanged();
            }
        }
        public uint AvailableXP
        {
            get { return FaDCharacter.XP.AvailableXP; }
            set
            {
                FaDCharacter.XP.AvailableXP = value;
                OnPropertyChanged();
            }
        }
        public uint Brawn
        {
            get { return FaDCharacter.Characteristics.Brawn.Rank; }

            set
            {
                FaDCharacter.Characteristics.Brawn.Rank = value;
                SetSkillsCharacteristic(FaDCharacter.Characteristics.Brawn);
                OnPropertyChanged();
            }
        }
        public uint Conflict
        {
            get { return FaDCharacter.Conflict; }
            set
            {
                FaDCharacter.Conflict = value;
                OnPropertyChanged();
            }
        }
        public uint Cunning
        {
            get { return FaDCharacter.Characteristics.Cunning.Rank; }

            set
            {
                FaDCharacter.Characteristics.Cunning.Rank = value;
                SetSkillsCharacteristic(FaDCharacter.Characteristics.Cunning);
                OnPropertyChanged();
            }
        }
        public uint CurrentStrain
        {
            get { return FaDCharacter.CurrentStrain; }

            set
            {
                FaDCharacter.CurrentStrain = value;
                OnPropertyChanged();
            }
        }
        public uint CurrentWounds
        {
            get { return FaDCharacter.CurrentWounds; }

            set
            {
                FaDCharacter.CurrentWounds = value;
                OnPropertyChanged();
            }
        }
        public uint ForceRating
        {
            get { return FaDCharacter.ForceRating; }

            set
            {
                FaDCharacter.ForceRating = value;
                OnPropertyChanged();
            }
        }
        public uint Intellect
        {
            get { return FaDCharacter.Characteristics.Intellect.Rank; }

            set
            {
                FaDCharacter.Characteristics.Intellect.Rank = value;
                SetSkillsCharacteristic(FaDCharacter.Characteristics.Intellect);
                OnPropertyChanged();
            }
        }
        public uint MaxStrain
        {
            get { return FaDCharacter.MaxStrain; }

            set
            {
                FaDCharacter.MaxStrain = value;
                OnPropertyChanged();
            }
        }
        public uint MaxWounds
        {
            get { return FaDCharacter.MaxWounds; }

            set
            {
                FaDCharacter.MaxWounds = value;
                OnPropertyChanged();
            }
        }
        public uint MeleeDefense
        {
            get { return FaDCharacter.MeleeDefense; }

            set
            {
                FaDCharacter.MeleeDefense = value;
                OnPropertyChanged();
            }
        }
        public uint Morality
        {
            get { return FaDCharacter.Morality; }
            set
            {
                FaDCharacter.Morality = value;
                OnPropertyChanged();
            }
        }
        public uint RangedDefense
        {
            get { return FaDCharacter.RangedDefense; }

            set
            {
                FaDCharacter.RangedDefense = value;
                OnPropertyChanged();
            }
        }
        public uint Presence
        {
            get { return FaDCharacter.Characteristics.Presence.Rank; }

            set
            {
                FaDCharacter.Characteristics.Presence.Rank = value;
                SetSkillsCharacteristic(FaDCharacter.Characteristics.Presence);
                OnPropertyChanged();
            }
        }
        public uint SoakValue
        {
            get { return FaDCharacter.SoakValue; }
            set
            {
                FaDCharacter.SoakValue = value;
                OnPropertyChanged();
            }
        }
        public uint TotalXP
        {
            get { return FaDCharacter.XP.TotalXP; }
            set
            {
                FaDCharacter.XP.TotalXP = value;
                OnPropertyChanged();
            }
        }
        public uint Willpower
        {
            get { return FaDCharacter.Characteristics.Willpower.Rank; }

            set
            {
                FaDCharacter.Characteristics.Willpower.Rank = value;
                SetSkillsCharacteristic(FaDCharacter.Characteristics.Willpower);
                OnPropertyChanged();
            }
        }

        public FaDCharacterViewModel() : this(new FaDCharacter()) { }

        public FaDCharacterViewModel(FaDCharacter character)
        {
            FaDCharacter = character;
            InitializeViewModels();
        }

        private void InitializeViewModels()
        {
            CriticalInjuriesViewModel = new CriticalInjuriesViewModel(FaDCharacter.CriticalInjuries);
            InventoryViewModel = new InventoryViewModel(FaDCharacter.Inventory);
            SkillsViewModel = new SkillsViewModel(FaDCharacter.Skills, FaDCharacter.Characteristics, FaDCharacter.XP);
            TalentsViewModel = new TalentsViewModel(FaDCharacter.Talents);
        }

        private void SetSkillsCharacteristic(Characteristic characteristic)
        {
            foreach (var skillViewModel in SkillsViewModel.SkillViewModels)
            {
                if (skillViewModel.Skill.Characteristic.GetType() == characteristic.GetType())
                {
                    skillViewModel.Skill.Characteristic = characteristic;
                    skillViewModel.CalculateDicePool();
                }
            }
        }

    }
}
