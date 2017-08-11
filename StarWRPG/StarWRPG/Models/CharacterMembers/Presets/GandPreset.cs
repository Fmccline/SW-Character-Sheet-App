using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class GandPreset : SpeciesPreset
    {
        public override string SpeciesName
        {
            get { return "Gand"; }
        }

        public override string SpecialAbilities
        {
            get { return "Gands begin the game with one rank in Discipline." + AUTOMATIC; }
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
            return new Characteristics(2, 2, 2, 2, 3, 2);
        }

        public override List<Skill> InitializeSkills()
        {
            return new List<Skill>()
            {
                new DisciplineSkill(Characteristics.Willpower) { Rank = 1 },
            };
        }

        public override List<Talent> InitializeTalents()
        {
            return new List<Talent>
            {
                new Talent
                {
                    Name = "Ammonia Breathers",
                    Description = "Gands either have lungs and breath ammonia, or they don't have lungs. If a player chooses to not have lungs, " +
                                  "their character is immune to suffocation (but not wounds suffered from being in a vacuum). If a player chooses " +
                                  "to have lungs, their character starts with an ammonia respirator and treats oxygen as a dangerous atmosphere " +
                                  "with Rating 8. However, their character gains 10 starting XP.",
                    PageNumber = 48,
                }
            };
        }
    }
}
