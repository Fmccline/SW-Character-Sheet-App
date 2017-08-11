using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class QuarrenPreset : SpeciesPreset
    {
        public override string SpeciesName
        {
            get { return "Quarren"; }
        }

        public override string SpecialAbilities
        {
            get { return "Quarren begin the game with one rank in Negotiation." + AUTOMATIC; }
        }

        public override uint MaxWounds
        {
            get { return 10; }
        }

        public override uint MaxStrain
        {
            get { return 8; }
        }

        public override uint StartingXP
        {
            get { return 95; }
        }

        public override Characteristics InitializeCharacteristics()
        {
            return new Characteristics(2, 2, 1, 2, 3, 2);
        }

        public override List<Skill> InitializeSkills()
        {
            return new List<Skill>()
            {
                new NegotiationSkill(Characteristics.Presence) { Rank = 1 },
            };
        }

        public override List<Talent> InitializeTalents()
        {
            return new List<Talent>
            {
                new Talent
                {
                    Name = "Amphibious",
                    Description = "Quarren can breathe underwater without penalty and never suffer movement" +
                                  "penalties for traveling through water.",
                    PageNumber = 24,
                },
                new Talent
                {
                    Name = "Ink Spray",
                    Description = "Once per encounter, as an out-of-turn incidental, a Quarren may suffer 2 strain to add " +
                                  "1 setback to a combat check made by a character within short range. If under water, " +
                                  "add 2 more setback.",
                    PageNumber = 24
                }
            };
        }
    }
}
