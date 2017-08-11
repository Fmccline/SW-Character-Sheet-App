using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class GotalPreset : SpeciesPreset
    {
        public override string SpeciesName
        {
            get { return "Gotal"; }
        }

        public override string SpecialAbilities
        {
            get { return "Gotals begin the game with one rank in Perception." + AUTOMATIC; }
        }

        public override uint MaxWounds
        {
            get { return 9; }
        }

        public override uint MaxStrain
        {
            get { return 8; }
        }

        public override uint StartingXP
        {
            get { return 100; }
        }

        public override Characteristics InitializeCharacteristics()
        {
            return new Characteristics(2, 2, 2, 3, 2, 1);
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
                    Name = "Energy Sensitivity",
                    Description = "The head cones of a Gotal are finely tuned sensory organs used to detect almost the entirety of the " +
                                  "electromagnetic spectrum. Once per encounter as a maneuver, a Gotal may sense the presence and " +
                                  "current emotional states of all living things within short range of himself.",
                    PageNumber = 22,
                }
            };
        }
    }
}
