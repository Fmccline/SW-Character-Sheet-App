using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using StarWRPG.ViewModels;

namespace StarWRPG.Models
{
    public class FalleenPreset : SpeciesPreset
    {
        public override string SpeciesName
        {
            get { return "Falleen"; }
        }
        public override string SpecialAbilities
        {
            get { return "Falleen begin the game with one rank in Charm." + AUTOMATIC; }
        }
        public override uint MaxWounds
        {
            get { return 10; }
        }
        public override uint MaxStrain
        {
            get { return 12; }
        }
        public override uint StartingXP
        {
            get { return 90; }
        }

        public override Characteristics InitializeCharacteristics()
        {
            return new Characteristics(1, 2, 2, 2, 2, 3);
        }

        public override List<Skill> InitializeSkills()
        {
            return new List<Skill>
            {
                new CharmSkill(Characteristics.Presence) { Rank = 1 },
            };
        }

        public override List<Talent> InitializeTalents()
        {
            return new List<Talent>
            {
                new Talent
                {
                    Name = "Beguiling Pheromones",
                    Description = "Once per check as an incidental, a Falleen may suffer 2 strain to upgrade the ability of a " +
                                  "Charm, Deception, or Negotiation check against a living sentient being within short range once. " +
                                  "This ability has no effect on targets wearing breath masks or without respiratory systems.",
                    PageNumber = 19
                },
            };
        }
    }
}
