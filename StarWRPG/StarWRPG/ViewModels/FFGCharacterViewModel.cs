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

        // ViewModels
        public CharacterMotivationsViewModel CharacterMotivationsViewModel { get; private set; }
        public CriticalInjuriesViewModel CriticalInjuriesViewModel { get; private set; }
        public InventoryViewModel InventoryViewModel { get; private set; }
        public TalentsViewModel TalentsViewModel { get; private set; }
        public SkillsViewModel SkillsViewModel { get; private set; }

        // Presets
        private FFGPresetViewModel speciesPreset;

        // Character Info
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
        // Description
        public string Age
        {
            get { return FFGCharacter.Description.Age; }
            set
            {
                FFGCharacter.Description.Age = value;
                OnPropertyChanged();
            }
        }
        public string Build
        {
            get { return FFGCharacter.Description.Build; }
            set
            {
                FFGCharacter.Description.Build = value;
                OnPropertyChanged();
            }
        }
        public string Eyes
        {
            get { return FFGCharacter.Description.Eyes; }
            set
            {
                FFGCharacter.Description.Eyes = value;
                OnPropertyChanged();
            }
        }
        public string Gender
        {
            get { return FFGCharacter.Description.Gender; }
            set
            {
                FFGCharacter.Description.Gender = value;
                OnPropertyChanged();
            }
        }
        public string Hair
        {
            get { return FFGCharacter.Description.Hair; }
            set
            {
                FFGCharacter.Description.Hair = value;
                OnPropertyChanged();
            }
        }
        public string Height
        {
            get { return FFGCharacter.Description.Height; }
            set
            {
                FFGCharacter.Description.Height = value;
                OnPropertyChanged();
            }
        }
        public string NotableFeatures
        {
            get { return FFGCharacter.Description.NotableFeatures; }
            set
            {
                FFGCharacter.Description.NotableFeatures = value;
                OnPropertyChanged();
            }
        }

        // Stats
        public uint AvailableXP
        {
            get { return FFGCharacter.XP.AvailableXP; }
            set
            {
                FFGCharacter.XP.AvailableXP = value;
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
        public uint RangedDefense
        {
            get { return FFGCharacter.RangedDefense; }

            set
            {
                FFGCharacter.RangedDefense = value;
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
        // Characteristics
        public uint Agility
        {
            get { return FFGCharacter.Characteristics.Agility.Rank; }

            set
            {
                FFGCharacter.Characteristics.Agility.Rank = value;
                SetCharacteristicForSkills(FFGCharacter.Characteristics.Agility);
                OnPropertyChanged();
            }
        }
        public uint Brawn
        {
            get { return FFGCharacter.Characteristics.Brawn.Rank; }

            set
            {
                FFGCharacter.Characteristics.Brawn.Rank = value;
                SetCharacteristicForSkills(FFGCharacter.Characteristics.Brawn);
                OnPropertyChanged();
            }
        }
        public uint Cunning
        {
            get { return FFGCharacter.Characteristics.Cunning.Rank; }

            set
            {
                FFGCharacter.Characteristics.Cunning.Rank = value;
                SetCharacteristicForSkills(FFGCharacter.Characteristics.Cunning);
                OnPropertyChanged();
            }
        }
        public uint Intellect
        {
            get { return FFGCharacter.Characteristics.Intellect.Rank; }

            set
            {
                FFGCharacter.Characteristics.Intellect.Rank = value;
                SetCharacteristicForSkills(FFGCharacter.Characteristics.Intellect);
                OnPropertyChanged();
            }
        }
        public uint Presence
        {
            get { return FFGCharacter.Characteristics.Presence.Rank; }

            set
            {
                FFGCharacter.Characteristics.Presence.Rank = value;
                SetCharacteristicForSkills(FFGCharacter.Characteristics.Presence);
                OnPropertyChanged();
            }
        }
        public uint Willpower
        {
            get { return FFGCharacter.Characteristics.Willpower.Rank; }

            set
            {
                FFGCharacter.Characteristics.Willpower.Rank = value;
                SetCharacteristicForSkills(FFGCharacter.Characteristics.Willpower);
                OnPropertyChanged();
            }
        }
        public uint MaxCharacteristicRank
        {
            get { return FFGCharacter.Characteristics.Agility.MaxRank; }
        }

        // Motivations
        public uint Conflict
        {
            get { return FFGCharacter.Conflict; }
            set
            {
                FFGCharacter.Conflict = value;
                OnPropertyChanged();
            }
        }
        public uint Contribution
        {
            get { return FFGCharacter.Contribution; }
            set
            {
                FFGCharacter.Contribution = value;
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
        public uint TotalDuty
        {
            get { return FFGCharacter.TotalDuty; }
            set
            {
                FFGCharacter.TotalDuty = value;
                OnPropertyChanged();
            }
        }
        public uint TotalObligation
        {
            get { return FFGCharacter.TotalObligation; }
            set
            {
                FFGCharacter.TotalObligation = value;
                OnPropertyChanged();
                OnPropertyChanged(nameof(TotalObligationText));
            }
        }
        public string TotalObligationText
        {
            get { return $"Total Obligation: {TotalObligation}"; }
        }

        // Constructors
        public FFGCharacterViewModel() : this(new FFGCharacter()) { }
        public FFGCharacterViewModel(FFGCharacter character)
        {
            FFGCharacter = character;
            InitializeViewModels();
        }

        // Private Methods
        private void InitializeViewModels()
        {
            CharacterMotivationsViewModel = new CharacterMotivationsViewModel(FFGCharacter.Motivations, this);
            CriticalInjuriesViewModel = new CriticalInjuriesViewModel(FFGCharacter.CriticalInjuries);
            InventoryViewModel = new InventoryViewModel(FFGCharacter.Inventory);
            SkillsViewModel = new SkillsViewModel(FFGCharacter.Skills, FFGCharacter.Characteristics, FFGCharacter.XP);
            TalentsViewModel = new TalentsViewModel(FFGCharacter.Talents);
        }
        private void SetCharacteristicForSkills(Characteristic characteristic)
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

        // Public Methods
        public void SetSpeciesPreset(FFGPresetViewModel species)
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
