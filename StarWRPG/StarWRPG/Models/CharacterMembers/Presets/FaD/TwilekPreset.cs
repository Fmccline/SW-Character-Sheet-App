using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class TwilekPreset : SpeciesPreset
    {
        public override string SpeciesName
        {
            get { return "Twi'lek"; }
        }

        public override string SpecialAbilities
        {
            get { return "Twi'leks begin the game with one rank in either Charm or Deception." + MANUAL; }
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
            return new Characteristics(1, 2, 2, 2, 2, 3);
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
                    Name = "Desert Dwellers",
                    Description = "When making skill checks, Twi'leks may remove one setback imposed due to arid or hot environmental conditions.",
                    PageNumber = 62,
                }
            };
        }
    }
}
