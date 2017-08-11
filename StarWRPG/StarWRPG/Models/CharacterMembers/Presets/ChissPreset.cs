using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class ChissPreset : SpeciesPreset
    {
        public override string SpeciesName
        {
            get { return "Chiss"; }
        }

        public override string SpecialAbilities
        {
            get { return "Chiss begin the game with one rank in Cool." + AUTOMATIC; }
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
            return new Characteristics(2, 2, 3, 2, 2, 1);
        }

        public override List<Skill> InitializeSkills()
        {
            return new List<Skill>()
            {
                new CoolSkill(Characteristics.Presence) { Rank = 1 },
            };
        }

        public override List<Talent> InitializeTalents()
        {
            return new List<Talent>
            {
                new Talent
                {
                    Name = "Infravision",
                    Description = "Chiss have adapted to be able to see in both the infrared and normal visual spectra. This enables " +
                                  "Chiss characters to remove up to 1 setback added to checks by lighting conditions.",
                    PageNumber = 21,
                }
            };
        }
    }
}
