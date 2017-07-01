using StarWRPG.Models;
using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public abstract class SpeciePreset
    {
        protected Characteristics characteristics;
        protected List<Talent> talents;
        protected List<Skill> skills;

        public Characteristics Characteristics
        {
            get
            {
                if (characteristics == null)
                {
                    characteristics = InitializeCharacteristics();
                }
                return characteristics;
            }
        }
        public List<Talent> Talents
        {
            get
            {
                if (talents == null)
                {
                    talents = InitializeTalents();
                }
                return talents;
            }
        }
        public List<Skill> Skills
        {
            get
            {
                if (skills == null)
                {
                    skills = InitializeSkills();
                }
                return skills;
            }
        }

        public abstract string SpecieName { get; }
        public abstract string SpecialAbilities { get; }

        public abstract uint MaxWounds { get; }
        public abstract uint MaxStrain { get; }
        public abstract uint StartingXP { get; }

        public abstract Characteristics InitializeCharacteristics();
        public abstract List<Talent> InitializeTalents();
        public abstract List<Skill> InitializeSkills();

        protected const string AUTOMATIC = "\n(Automatically added to your character upon selection)";
        protected const string MANUAL = "\n(NOT automatically added to your character.)";

    }
}
