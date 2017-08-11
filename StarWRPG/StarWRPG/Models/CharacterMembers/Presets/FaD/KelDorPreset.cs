using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class KelDorPreset : SpeciesPreset
    {
        public override string SpeciesName
        {
            get { return "Kel Dor"; }
        }

        public override string SpecialAbilities
        {
            get { return "Kel Dors begin the game with one rank in Education." + AUTOMATIC; }
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
            return new Characteristics(1, 2, 2, 2, 3, 2);
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
                    Name = "Dark Vision",
                    Description = "Kel Dors remove up to 2 setback imposed due to darkness.",
                    PageNumber = 58,
                },
                new Talent
                {
                    Name = "Atmospheric Requirement",
                    Description = "Kel Dors must wear a specialized mask to breathe and see outside of their native atmosphere. " +
                                  "Kel Dors start the game with an atitox breath mask and treats oxygen as a dangerous atmosphere with rating 8. " +
                                  "However, Kel Dors may survive in vacuum for up to 5 minutes before suffering its effects.",
                    PageNumber = 58,
                }
            };
        }
    }
}
