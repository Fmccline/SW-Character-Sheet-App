using StarWRPG.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.ViewModels
{
    public class SpeciesPresetViewModel : ViewModelBase, IFFGPreset
    {
        public SpeciesPreset SpeciesPreset;
        public FFGCharacterViewModel FFGCharacterViewModel;

        public string SpeciesName
        {
            get { return SpeciesPreset.SpeciesName; }
        }
        public string SpecialAbilities
        {
            get { return SpeciesPreset.SpecialAbilities; }
        }
        public uint Agility
        {
            get { return SpeciesPreset.Characteristics.Agility.Rank; }
        }
        public uint Brawn
        {
            get { return SpeciesPreset.Characteristics.Brawn.Rank; }
        }
        public uint Cunning
        {
            get { return SpeciesPreset.Characteristics.Cunning.Rank; }
        }
        public uint Intellect
        {
            get { return SpeciesPreset.Characteristics.Intellect.Rank; }
        }
        public uint Presence
        {
            get { return SpeciesPreset.Characteristics.Presence.Rank; }
        }
        public uint Willpower
        {
            get { return SpeciesPreset.Characteristics.Willpower.Rank; }
        }
        public List<SkillViewModel> SkillViewModels;
        public List<TalentViewModel> TalentViewModels;

        public uint StartingXP
        {
            get { return SpeciesPreset.StartingXP; }
        }
        public uint MaxWounds
        {
            get { return SpeciesPreset.MaxWounds; }
        }
        public uint MaxStrain
        {
            get { return SpeciesPreset.MaxStrain; }
        }

        public SpeciesPresetViewModel(FFGCharacterViewModel character, SpeciesPreset preset)
        {
            FFGCharacterViewModel = character;
            SpeciesPreset = preset;

            InitializeSkills();
            InitializeTalents();
        }

        private void InitializeSkills()
        {
            SkillViewModels = new List<SkillViewModel>();
            foreach (var skill in SpeciesPreset.Skills)
            {
                SkillViewModels.Add(new SkillViewModel(skill,null,null));
            }
        }

        private void InitializeTalents()
        {
            TalentViewModels = new List<TalentViewModel>();
            foreach (var talent in SpeciesPreset.Talents)
            {
                TalentViewModels.Add(new TalentViewModel(talent, FFGCharacterViewModel.XP));
            }
        }

        public void RemovePreset()
        {
            SetCharacteristics(DifferenceOfUInts);
            SetSpeciesName();
            SetSkills(DifferenceOfUInts);
            RemoveTalents();
            SetStartingStats(DifferenceOfUInts);
        }

        public void SetPreset()
        {
            SetCharacteristics(SumOfUInts);
            SetSpeciesName(SpeciesName);
            SetSkills(SumOfUInts);
            AddTalents();
            SetStartingStats(SumOfUInts);
        }

        private uint DifferenceOfUInts(uint a, uint b)
        {
            return a - b;
        }

        private uint SumOfUInts(uint a, uint b)
        {
            return a + b;
        }

        private void SetCharacteristics(Func<uint, uint, uint> operation)
        {
            FFGCharacterViewModel.Agility = operation(FFGCharacterViewModel.Agility, Agility);
            FFGCharacterViewModel.Brawn = operation(FFGCharacterViewModel.Brawn, Brawn);
            FFGCharacterViewModel.Cunning = operation(FFGCharacterViewModel.Cunning, Cunning);
            FFGCharacterViewModel.Intellect = operation(FFGCharacterViewModel.Intellect, Intellect);
            FFGCharacterViewModel.Presence = operation(FFGCharacterViewModel.Presence, Presence);
            FFGCharacterViewModel.Willpower = operation(FFGCharacterViewModel.Willpower, Willpower);
        }

        private void SetSpeciesName(string specieName = "")
        {
            FFGCharacterViewModel.Species = specieName;
        }

        private void SetSkills(Func<uint, uint, uint> operation)
        {
            foreach (var skillViewModel in SkillViewModels)
            {
                foreach (var ffgSkillViewModel in FFGCharacterViewModel.SkillsViewModel.SkillViewModels)
                {
                    if (skillViewModel.Name.Equals(ffgSkillViewModel.Name))
                    {
                        ffgSkillViewModel.Rank = operation(ffgSkillViewModel.Rank, skillViewModel.Rank);
                        break;
                    }
                }
            }
        }

        private void AddTalents()
        {
            foreach (var talent in TalentViewModels)
            {
                FFGCharacterViewModel.TalentsViewModel.AddTalent(talent);
            }
        }

        private void RemoveTalents()
        {
            foreach (var talent in TalentViewModels)
            {
                FFGCharacterViewModel.TalentsViewModel.RemoveTalentByName(talent.Name);
            }
        }

        private void SetStartingStats(Func<uint, uint, uint> operation)
        {
            FFGCharacterViewModel.MaxWounds = operation(FFGCharacterViewModel.MaxWounds, MaxWounds);
            FFGCharacterViewModel.MaxStrain = operation(FFGCharacterViewModel.MaxStrain, MaxStrain);
            FFGCharacterViewModel.TotalXP = operation(FFGCharacterViewModel.TotalXP, StartingXP);
        }
    }
}
