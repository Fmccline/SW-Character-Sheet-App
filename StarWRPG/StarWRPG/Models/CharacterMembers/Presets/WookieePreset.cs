using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class WookieePreset : SpeciesPreset
    {
        public override string SpeciesName
        {
            get { return "Wookiee"; }
        }

        public override string SpecialAbilities
        {
            get { return "Wookiees begin the game with one rank in Brawl." + AUTOMATIC; }
        }

        public override uint MaxWounds
        {
            get { return 14; }
        }

        public override uint MaxStrain
        {
            get { return 8; }
        }

        public override uint StartingXP
        {
            get { return 90; }
        }

        public override Characteristics InitializeCharacteristics()
        {
            return new Characteristics(3, 2, 2, 2, 1, 2);
        }

        public override List<Skill> InitializeSkills()
        {
            return new List<Skill>()
            {
                new BrawlSkill(Characteristics.Brawn) { Rank = 1 },
            };
        }

        public override List<Talent> InitializeTalents()
        {
            return new List<Talent>
            {
                new Talent
                {
                    Name = "Wookiee Rage",
                    Description = "When a Wookiee has suffered any wounds, he deals +1 damage to Brawl and Melee attacks. When critically injured " +
                                  "he deals +2 damage instead.",
                    PageNumber = 52,
                }
            };
        }
    }
}
