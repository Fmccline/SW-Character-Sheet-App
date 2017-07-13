using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class CereanPreset : SpeciesPreset
    {
        public override string SpeciesName
        {
            get { return "Cerean"; }
        }

        public override string SpecialAbilities
        {
            get { return "Cereans begin the game with one rank in Vigilance." + AUTOMATIC; }
        }

        public override uint MaxWounds
        {
            get { return 10; }
        }

        public override uint MaxStrain
        {
            get { return 13; }
        }

        public override uint StartingXP
        {
            get { return 90; }
        }

        public override Characteristics InitializeCharacteristics()
        {
            return new Characteristics(2, 1, 3, 2, 2, 2);
        }

        public override List<Skill> InitializeSkills()
        {
            return new List<Skill>()
            {
                new VigilanceSkill(Characteristics.Willpower) { Rank = 1 },
            };
        }

        public override List<Talent> InitializeTalents()
        {
            return new List<Talent>
            {
                new Talent
                {
                    Name = "Binary Processing",
                    Description = "Cereans treat all knowledge skills as career skills." + MANUAL,
                    PageNumber = 55,
                }
            };
        }
    }
}
