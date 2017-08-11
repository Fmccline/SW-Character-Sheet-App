using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class TrandoshanPreset : SpeciesPreset
    {
        public override string SpeciesName
        {
            get { return "Trandoshan"; }
        }

        public override string SpecialAbilities
        {
            get { return "Trandoshans begin the game with one rank in Perception." + AUTOMATIC; }
        }

        public override uint MaxWounds
        {
            get { return 12; }
        }

        public override uint MaxStrain
        {
            get { return 9; }
        }

        public override uint StartingXP
        {
            get { return 90; }
        }

        public override Characteristics InitializeCharacteristics()
        {
            return new Characteristics(3, 1, 2, 2, 2, 2);
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
                    Name = "Regeneration",
                    Description = "When recovering wounds through natural rest or recuperation in a Bacta tank, Trandoshans recover 1 additional " +
                                  "wound. Also, Trandoshans can regrow lost limbs, though it generally takes at least a month.",
                    PageNumber = 51,
                },
                new Talent
                {
                    Name = "Claws",
                    Description = "When Trandoshans make a Brawl check, they deal 1 additional damage and the Critical Rating is 3.",
                    PageNumber = 51,
                }
            };
        }
    }
}
