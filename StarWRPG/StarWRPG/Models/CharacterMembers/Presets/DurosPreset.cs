using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class DurosPreset : SpeciesPreset
    {
        public override string SpeciesName
        {
            get { return "Duros"; }
        }

        public override string SpecialAbilities
        {
            get { return "Duros begin the game with one rank in Piloting-Space." + AUTOMATIC; }
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
            return new Characteristics(1, 2, 3, 2, 2, 2);
        }

        public override List<Skill> InitializeSkills()
        {
            return new List<Skill>()
            {
                new PilotingSpaceSkill(Characteristics.Agility) { Rank = 1 },
            };
        }

        public override List<Talent> InitializeTalents()
        {
            return new List<Talent>
            {
                new Talent
                {
                    Name = "Intuitive Navigation",
                    Description = "Duros may add 1 advantage to all Astrogation checks they make.",
                    PageNumber = 21,
                }
            };
        }
    }
}
