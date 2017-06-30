using StarWRPG.Models;
using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public abstract class SpeciePreset : FFGPreset
    {
        public Characteristics Characteristics;
        public List<Talent> Talents;
        public List<Skill> Skills;

        public string Name;
        public string SpecialAbilities;

        public uint MaxWounds;
        public uint MaxStrain;
        public uint StartingXP;

        protected abstract void InitializeCharacteristics();
        protected abstract void InitializeName();
        protected abstract void InitializeSkills();
        protected abstract void InitializeTalents();
        protected abstract void InitializeStartingStats();

        public SpeciePreset()
        {
            InitializePresetAttributes();
        }

        protected override void InitializePresetAttributes()
        {
            InitializeCharacteristics();
            InitializeName();
            InitializeSkills();
            InitializeTalents();
            InitializeStartingStats();
        }
    }
}
