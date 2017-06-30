using StarWRPG.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.ViewModels
{
    public class SpeciePresetViewModel : FFGPresetViewModelBase
    {
        SpeciePreset speciePreset;
        public FFGCharacterViewModel FFGCharacterViewModel;

        public string SpecieName
        {
            get { return speciePreset.Name; }
        }
        public string SpecialAbilities
        {
            get { return speciePreset.SpecialAbilities; }
        }
        public uint Agility
        {
            get { return speciePreset.Characteristics.Agility.Rank; }
        }
        public uint Brawn
        {
            get { return speciePreset.Characteristics.Brawn.Rank; }
        }
        public uint Cunning
        {
            get { return speciePreset.Characteristics.Cunning.Rank; }
        }
        public uint Intellect
        {
            get { return speciePreset.Characteristics.Intellect.Rank; }
        }
        public uint Presence
        {
            get { return speciePreset.Characteristics.Presence.Rank; }
        }
        public uint Willpower
        {
            get { return speciePreset.Characteristics.Willpower.Rank; }
        }
        public List<SkillViewModel> SkillViewModels;
        public List<TalentViewModel> TalentViewModels;

        public uint StartingXP
        {
            get { return speciePreset.StartingXP; }
        }
        public uint MaxWounds
        {
            get { return speciePreset.MaxWounds; }
        }
        public uint MaxStrain
        {
            get { return speciePreset.MaxStrain; }
        }

        public SpeciePresetViewModel(FFGCharacterViewModel character, SpeciePreset preset)
        {
            FFGCharacterViewModel = character;
            speciePreset = preset;

            InitializeSkills();
            InitializeTalents();
        }

        private void InitializeSkills()
        {
            SkillViewModels = new List<SkillViewModel>();
            foreach (var skill in speciePreset.Skills)
            {
                SkillViewModels.Add(new SkillViewModel(skill,null,null));
            }
        }

        private void InitializeTalents()
        {
            TalentViewModels = new List<TalentViewModel>();
            foreach (var talent in speciePreset.Talents)
            {
                TalentViewModels.Add(new TalentViewModel(talent));
            }
        }

        public override void RemovePreset()
        {
            SetCharacteristics(DifferenceOfUInts);
            SetSpecieName();
            SetSkills(DifferenceOfUInts);
            RemoveTalents();
            SetStartingStats(DifferenceOfUInts);
        }

        public override void SetPreset()
        {
            SetCharacteristics(SumOfUInts);
            SetSpecieName(SpecieName);
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

        private void SetSpecieName(string specieName = "")
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
                FFGCharacterViewModel.TalentsViewModel.RemoveTalent(talent);
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
