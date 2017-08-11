using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class NautolanPreset : SpeciesPreset
    {
        public override string SpeciesName
        {
            get { return "Nautolan"; }
        }

        public override string SpecialAbilities
        {
            get { return "Nautolans begin the game with one rank in Athletics." + AUTOMATIC; }
        }

        public override uint MaxWounds
        {
            get { return 11; }
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
            return new Characteristics(3, 2, 2, 2, 1, 2);
        }

        public override List<Skill> InitializeSkills()
        {
            return new List<Skill>()
            {
                new AthleticsSkill(Characteristics.Brawn) { Rank = 1 },
            };
        }

        public override List<Talent> InitializeTalents()
        {
            return new List<Talent>
            {
                new Talent
                {
                    Name = "Amphibious",
                    Description = "Nautolans may breathe underwater without penalty and never suffer movement" +
                                  "penalties for traveling through water.",
                    PageNumber = 59,
                }
            };
        }
    }
}
