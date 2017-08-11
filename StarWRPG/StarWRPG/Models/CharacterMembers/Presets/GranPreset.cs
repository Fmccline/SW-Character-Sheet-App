using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class GranPreset : SpeciesPreset
    {
        public override string SpeciesName
        {
            get { return "Gran"; }
        }

        public override string SpecialAbilities
        {
            get { return "Gran begin the game with one rank in Charm or Negotiation." + MANUAL; }
        }

        public override uint MaxWounds
        {
            get { return 10; }
        }

        public override uint MaxStrain
        {
            get { return 9; }
        }

        public override uint StartingXP
        {
            get { return 100; }
        }

        public override Characteristics InitializeCharacteristics()
        {
            return new Characteristics(2, 2, 2, 1, 2, 3);
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
                    Name = "Enhanced Vision",
                    Description = "When making ranged combat or Perception checks, Gran remove up to 2 setback imposed due to environmental " +
                                  "conditions or concealment (but not defense).",
                    PageNumber = 57,
                }
            };
        }
    }
}
