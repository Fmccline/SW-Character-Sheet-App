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

        public uint MaxWounds;
        public uint MaxStrain;

        protected abstract void InitializeThresholds();
        protected abstract void InitializeCharacteristics();
        protected abstract void InitializeSkills();
        protected abstract void InitializeTalents();

        public SpeciePreset()
        {
            InitializePresetAttributes();
        }

        protected override void InitializePresetAttributes()
        {
            InitializeCharacteristics();
            InitializeSkills();
            InitializeTalents();
            InitializeThresholds();
        }
    }
}
