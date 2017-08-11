using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class IthorianPreset : SpeciesPreset
    {
        public override string SpeciesName
        {
            get { return "Ithorian"; }
        }

        public override string SpecialAbilities
        {
            get { return "Ithorians begin the game with one rank in Survival." + AUTOMATIC; }
        }

        public override uint MaxWounds
        {
            get { return 9; }
        }

        public override uint MaxStrain
        {
            get { return 12; }
        }

        public override uint StartingXP
        {
            get { return 90; }
        }

        public override Characteristics InitializeCharacteristics()
        {
            return new Characteristics(2, 1, 2, 2, 3, 2);
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
            return new List<Talent>
            {
                new Talent
                {
                    Name = "Ithorian Bellow",
                    Description = "With tow mouths and four throats, Ithorians can suffer 3 strain to use their unique natural weapon: " +
                                  "(Resilience; Damage 6; Crit 4; Range[Short]; Blast 3, Concussive 1, Slow-Firing 2, Stun Damage)",
                    PageNumber = 58,
                }
            };
        }
    }
}
