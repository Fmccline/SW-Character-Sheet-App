using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class RodianPreset : SpeciesPreset
    {
        public override string SpeciesName
        {
            get { return "Rodian"; }
        }

        public override string SpecialAbilities
        {
            get { return "Rodians begin the game with one rank in Survival." + AUTOMATIC; }
        }

        public override uint MaxWounds
        {
            get { return 10; }
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
            return new Characteristics(2, 3, 2, 2, 1, 2);
        }

        public override List<Skill> InitializeSkills()
        {
            return new List<Skill>()
            {
                new SurvivalSkill(Characteristics.Willpower) { Rank = 1 },
            };
        }

        public override List<Talent> InitializeTalents()
        {
            return new List<Talent>();
        }
    }
}
