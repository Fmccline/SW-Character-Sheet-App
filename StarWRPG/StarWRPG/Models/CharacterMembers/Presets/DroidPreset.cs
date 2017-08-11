using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class DroidPreset : SpeciesPreset
    {
        public override string SpeciesName
        {
            get { return "Droid"; }
        }

        public override string SpecialAbilities
        {
            get
            {
                return "Droids do not need to eat, sleep, or breath, and are unaffected by toxins and poisons. Droids have a cybernetic " +
                       "implant cap of 6 (instead of their brawn rating). Droids may train one rank in 6 career skills (instead of the " +
                       "usual 4), and Droids may train one rank in 3 of the specialization skills (instead of the usual 2).";
            }
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
            get { return 175; }
        }

        public override Characteristics InitializeCharacteristics()
        {
            return new Characteristics(1, 1, 1, 1, 1, 1);
        }

        public override List<Skill> InitializeSkills()
        {
            return new List<Skill>();
        }

        public override List<Talent> InitializeTalents()
        {
            return new List<Talent>
            {
                new Talent
                {
                    Name = "Inorganic",
                    Description = "Droids do not benefit from bacta tanks, stimpacks, or Medicine skill checks. Droids can be tended to with a " +
                                  "Mechanics check, using the same difficulties used with a Medicine check.",
                    PageNumber = 54,
                },
                new Talent
                {
                    Name = "Enduring",
                    Description = "Gain 1 soak for each rank of Enduring." + MANUAL,
                    PageNumber = 54,
                },
                new Talent
                {
                    Name = "Mechanical Being",
                    Description = "Droids cannot become Force Sensitive, and they aren't affected by mind-altering Force Powers.",
                    PageNumber = 54,
                },
            };
        }
    }
}
