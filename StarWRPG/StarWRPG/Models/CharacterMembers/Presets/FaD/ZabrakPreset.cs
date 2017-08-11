using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using StarWRPG.ViewModels;

namespace StarWRPG.Models
{
    public class ZabrakPreset : SpeciesPreset
    {
        public override string SpeciesName
        {
            get { return "Zabrak"; }
        }
        public override string SpecialAbilities
        {
            get { return "Zabrak begin the game with one rank in Survival." + AUTOMATIC; }
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
            return new Characteristics(2, 2, 2, 2, 3, 1);
        }

        public override List<Skill> InitializeSkills()
        {
            return new List<Skill>
            {
                new SurvivalSkill(Characteristics.Cunning) { Rank = 1 },
            };
        }

        public override List<Talent> InitializeTalents()
        {
            return new List<Talent>
            {
                new Talent
                {
                    Description = "Zabrak add automatic advantage to all Coercion checks they make.",
                    Name = "Fearsome Countenance",
                    PageNumber = 63
                },
            };
        }
    }
}
