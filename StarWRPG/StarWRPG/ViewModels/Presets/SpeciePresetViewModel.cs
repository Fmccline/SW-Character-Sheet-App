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
        public SpeciePreset SpeciePreset;
        public FFGCharacterViewModel FFGCharacterViewModel;

        public uint Agility
        {
            get { return SpeciePreset.Characteristics.Agility.Rank; }
        }
        public uint Brawn
        {
            get { return SpeciePreset.Characteristics.Brawn.Rank; }
        }
        public uint Cunning
        {
            get { return SpeciePreset.Characteristics.Cunning.Rank; }
        }
        public uint Intellect
        {
            get { return SpeciePreset.Characteristics.Intellect.Rank; }
        }
        public uint Presence
        {
            get { return SpeciePreset.Characteristics.Presence.Rank; }
        }
        public uint Willpower
        {
            get { return SpeciePreset.Characteristics.Willpower.Rank; }
        }
        public List<Skill> Skills
        {
            get { return SpeciePreset.Skills; }
        }
        public List<Talent> Talents
        {
            get { return SpeciePreset.Talents; }
        }

        public uint MaxWounds
        {
            get { return SpeciePreset.MaxWounds; }
        }
        public uint MaxStrain
        {
            get { return SpeciePreset.MaxStrain; }
        }

        public SpeciePresetViewModel(FFGCharacterViewModel character)
        {
            FFGCharacterViewModel = character;
        }

        public override void SetPreset()
        {
            SetCharacteristics(SumOfUInts);
            SetSkills(SumOfUInts);
            AddTalents();
            SetThresholds(SumOfUInts);
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

        private void SetSkills(Func<uint, uint, uint> operation)
        {
            foreach (var skill in Skills)
            {
                foreach (var skillViewModel in FFGCharacterViewModel.SkillsViewModel.SkillViewModels)
                {
                    if (skill.SkillName.Equals(skillViewModel.Skill.SkillName))
                    {
                        skillViewModel.Skill.Rank = operation(skillViewModel.Skill.Rank, skill.Rank);
                        break;
                    }
                }
            }
        }

        private void AddTalents()
        {
            foreach (var talent in Talents)
            {
                FFGCharacterViewModel.TalentsViewModel.AddTalent(talent);
            }
        }

        private void RemoveTalents()
        {
            foreach (var talent in Talents)
            {
                FFGCharacterViewModel.TalentsViewModel.RemoveTalent(talent);
            }
        }

        private void SetThresholds(Func<uint, uint, uint> operation)
        {
            FFGCharacterViewModel.MaxWounds = operation(FFGCharacterViewModel.MaxWounds, MaxWounds);
            FFGCharacterViewModel.MaxStrain = operation(FFGCharacterViewModel.MaxStrain, MaxStrain);
        }

        public override void RemovePreset()
        {
            SetCharacteristics(DifferenceOfUInts);
            SetSkills(DifferenceOfUInts);
            RemoveTalents();
            SetThresholds(DifferenceOfUInts);
        }
    }
}
