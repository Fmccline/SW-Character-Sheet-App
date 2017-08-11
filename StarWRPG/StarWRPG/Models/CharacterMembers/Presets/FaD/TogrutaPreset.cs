using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class TogrutaPreset : SpeciesPreset
    {
        public override string SpeciesName
        {
            get { return "Togruta"; }
        }

        public override string SpecialAbilities
        {
            get { return "Togrutas begin the game with one rank in Perception." + AUTOMATIC; }
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
            return new Characteristics(1, 2, 2, 3, 2, 2);
        }

        public override List<Skill> InitializeSkills()
        {
            return new List<Skill>()
            {
                new PerceptionSkill(Characteristics.Cunning) { Rank = 1 },
            };
        }

        public override List<Talent> InitializeTalents()
        {
            return new List<Talent>
            {
                new Talent
                {
                    Name = "Pack Instincts",
                    Description = "When performing the assist maneuver, Togrutas grant 2 boost instead of 1.",
                    PageNumber = 60,
                }
            };
        }
    }
}
