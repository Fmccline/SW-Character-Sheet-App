using StarWRPG.Models;
using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using Xamarin.Forms;

namespace StarWRPG.ViewModels
{
    public class FFGCharacterViewModel : ViewModelBase
    {
        public FFGCharacter FFGCharacter { get; private set; }

        public CriticalInjuriesViewModel CriticalInjuriesViewModel { get; private set; }
        public InventoryViewModel InventoryViewModel { get; private set; }
        public TalentsViewModel TalentsViewModel { get; private set; }
        public SkillsViewModel SkillsViewModel { get; private set; }

        private FFGPresetViewModel speciesPreset;

        public string Background
        {
            get { return FFGCharacter.Background; }

            set
            {
                FFGCharacter.Background = value;
                OnPropertyChanged();
            }
        }
        public string Career
        {
            get { return FFGCharacter.Career; }

            set
            {
                FFGCharacter.Career = value;
                OnPropertyChanged();
            }
        }
        public string Description
        {
            get { return FFGCharacter.Description; }

            set
            {
                FFGCharacter.Description = value;
                OnPropertyChanged();
            }
        }
        public string EmotionalStrengths
        {
            get { return FFGCharacter.EmotionalStrengths; }
            set
            {
                FFGCharacter.EmotionalStrengths = value;
                OnPropertyChanged();
            }
        }
        public string EmotionalWeaknesses
        {
            get { return FFGCharacter.EmotionalWeaknesses; }
            set
            {
                FFGCharacter.EmotionalWeaknesses = value;
                OnPropertyChanged();
            }
        }
        public string Motivation
        {
            get { return FFGCharacter.Motivation; }
            set
            {
                FFGCharacter.Motivation = value;
                OnPropertyChanged();
            }
        }
        public string Name
        {
            get { return FFGCharacter.Name; }

            set
            {
                FFGCharacter.Name = value;
                OnPropertyChanged();
            }
        }
        public string SpecializationTrees
        {
            get { return FFGCharacter.SpecializationTrees; }

            set
            {
                FFGCharacter.SpecializationTrees = value;
                OnPropertyChanged();
            }
        }
        public string Species
        {
            get { return FFGCharacter.Species; }

            set
            {
                FFGCharacter.Species = value;
                OnPropertyChanged();
            }
        }

        public uint Agility
        {
            get { return FFGCharacter.Characteristics.Agility.Rank; }

            set
            {
                FFGCharacter.Characteristics.Agility.Rank = value;
                SetSkillsCharacteristic(FFGCharacter.Characteristics.Agility);
                OnPropertyChanged();
            }
        }
        public uint AvailableXP
        {
            get { return FFGCharacter.XP.AvailableXP; }
            set
            {
                FFGCharacter.XP.AvailableXP = value;
                OnPropertyChanged();
            }
        }
        public uint Brawn
        {
            get { return FFGCharacter.Characteristics.Brawn.Rank; }

            set
            {
                FFGCharacter.Characteristics.Brawn.Rank = value;
                SetSkillsCharacteristic(FFGCharacter.Characteristics.Brawn);
                OnPropertyChanged();
            }
        }
        public uint Conflict
        {
            get { return FFGCharacter.Conflict; }
            set
            {
                FFGCharacter.Conflict = value;
                OnPropertyChanged();
            }
        }
        public uint Cunning
        {
            get { return FFGCharacter.Characteristics.Cunning.Rank; }

            set
            {
                FFGCharacter.Characteristics.Cunning.Rank = value;
                SetSkillsCharacteristic(FFGCharacter.Characteristics.Cunning);
                OnPropertyChanged();
            }
        }
        public uint CurrentStrain
        {
            get { return FFGCharacter.CurrentStrain; }

            set
            {
                FFGCharacter.CurrentStrain = value;
                OnPropertyChanged();
            }
        }
        public uint CurrentWounds
        {
            get { return FFGCharacter.CurrentWounds; }

            set
            {
                FFGCharacter.CurrentWounds = value;
                OnPropertyChanged();
            }
        }
        public uint ForceRating
        {
            get { return FFGCharacter.ForceRating; }

            set
            {
                FFGCharacter.ForceRating = value;
                OnPropertyChanged();
            }
        }
        public uint Intellect
        {
            get { return FFGCharacter.Characteristics.Intellect.Rank; }

            set
            {
                FFGCharacter.Characteristics.Intellect.Rank = value;
                SetSkillsCharacteristic(FFGCharacter.Characteristics.Intellect);
                OnPropertyChanged();
            }
        }
        public uint MaxStrain
        {
            get { return FFGCharacter.MaxStrain; }

            set
            {
                FFGCharacter.MaxStrain = value;
                OnPropertyChanged();
            }
        }
        public uint MaxWounds
        {
            get { return FFGCharacter.MaxWounds; }

            set
            {
                FFGCharacter.MaxWounds = value;
                OnPropertyChanged();
            }
        }
        public uint MeleeDefense
        {
            get { return FFGCharacter.MeleeDefense; }

            set
            {
                FFGCharacter.MeleeDefense = value;
                OnPropertyChanged();
            }
        }
        public uint Morality
        {
            get { return FFGCharacter.Morality; }
            set
            {
                FFGCharacter.Morality = value;
                OnPropertyChanged();
            }
        }
        public uint RangedDefense
        {
            get { return FFGCharacter.RangedDefense; }

            set
            {
                FFGCharacter.RangedDefense = value;
                OnPropertyChanged();
            }
        }
        public uint Presence
        {
            get { return FFGCharacter.Characteristics.Presence.Rank; }

            set
            {
                FFGCharacter.Characteristics.Presence.Rank = value;
                SetSkillsCharacteristic(FFGCharacter.Characteristics.Presence);
                OnPropertyChanged();
            }
        }
        public uint SoakValue
        {
            get { return FFGCharacter.SoakValue; }
            set
            {
                FFGCharacter.SoakValue = value;
                OnPropertyChanged();
            }
        }
        public uint TotalXP
        {
            get { return FFGCharacter.XP.TotalXP; }
            set
            {
                FFGCharacter.XP.TotalXP = value;
                OnPropertyChanged();
            }
        }
        public uint Willpower
        {
            get { return FFGCharacter.Characteristics.Willpower.Rank; }

            set
            {
                FFGCharacter.Characteristics.Willpower.Rank = value;
                SetSkillsCharacteristic(FFGCharacter.Characteristics.Willpower);
                OnPropertyChanged();
            }
        }

        public FFGCharacterViewModel() : this(new FFGCharacter()) { }

        public FFGCharacterViewModel(FFGCharacter character)
        {
            FFGCharacter = character;
            InitializeViewModels();
        }

        private void InitializeViewModels()
        {
            CriticalInjuriesViewModel = new CriticalInjuriesViewModel(FFGCharacter.CriticalInjuries);
            InventoryViewModel = new InventoryViewModel(FFGCharacter.Inventory);
            SkillsViewModel = new SkillsViewModel(FFGCharacter.Skills, FFGCharacter.Characteristics, FFGCharacter.XP);
            TalentsViewModel = new TalentsViewModel(FFGCharacter.Talents);
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

        public void SetSpeciePreset(FFGPresetViewModel species)
        {
            if (speciesPreset != null)
            {
                speciesPreset.RemovePreset();
            }
            speciesPreset = species;
            speciesPreset.SetPreset();
        }

    }
}
