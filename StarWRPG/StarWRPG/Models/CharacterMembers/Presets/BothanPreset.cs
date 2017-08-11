using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class BothanPreset : SpeciesPreset
    {
        public override string SpeciesName
        {
            get { return "Bothan"; }
        }

        public override string SpecialAbilities
        {
            get { return "Bothans begin the game with one rank in Streetwise." + AUTOMATIC; }
        }

        public override uint MaxWounds
        {
            get { return 10; }
        }

        public override uint MaxStrain
        {
            get { return 11; }
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
                new StreetwiseSkill(Characteristics.Cunning) { Rank = 1 },
            };
        }

        public override List<Talent> InitializeTalents()
        {
            return new List<Talent>
            {
                new Talent
                {
                    Name = "Convincing Demeanor",
                    Description = "Remove 1 setback per rank of Convincing Demeanor from Deception and Skulduggery checks.",
                    PageNumber = 52,
                }
            };
        }
    }
}
