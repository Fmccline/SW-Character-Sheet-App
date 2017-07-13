using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class MirialanPreset: SpeciesPreset
    {
        public override string SpeciesName
        {
            get { return "Mirialan"; }
        }

        public override string SpecialAbilities
        {
            get { return "Mirialans begin the game with one rank in Discipline and one rank in Cool." + AUTOMATIC; }
        }

        public override uint MaxWounds
        {
            get { return 11; }
        }

        public override uint MaxStrain
        {
            get { return 10; }
        }

        public override uint StartingXP
        {
            get { return 100; }
        }

        public override Characteristics InitializeCharacteristics()
        {
            return new Characteristics(2, 3, 2, 1, 2, 2);
        }

        public override List<Skill> InitializeSkills()
        {
            return new List<Skill>()
            {
                new DisciplineSkill(Characteristics.Willpower) { Rank = 1 },
                new CoolSkill(Characteristics.Presence) { Rank = 1 },
            };
        }

        public override List<Talent> InitializeTalents()
        {
            return new List<Talent>();
        }
    }
}
