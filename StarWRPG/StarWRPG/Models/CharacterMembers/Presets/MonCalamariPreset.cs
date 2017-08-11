using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class MonCalamariPreset : SpeciesPreset
    {
        public override string SpeciesName
        {
            get { return "Mon Calamari"; }
        }

        public override string SpecialAbilities
        {
            get { return "Mon Calamari begin the game with one rank in Education." + AUTOMATIC; }
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
            return new Characteristics(2, 2, 3, 1, 2, 2);
        }

        public override List<Skill> InitializeSkills()
        {
            return new List<Skill>()
            {
                new EducationSkill(Characteristics.Intellect) { Rank = 1 },
            };
        }

        public override List<Talent> InitializeTalents()
        {
            return new List<Talent>
            {
                new Talent
                {
                    Name = "Amphibious",
                    Description = "Mon Calamari can breathe underwater without penalty and never suffer movement" +
                                  "penalties for traveling through water.",
                    PageNumber = 59,
                },
            };
        }
    }
}
