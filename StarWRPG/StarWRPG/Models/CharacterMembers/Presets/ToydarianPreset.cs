using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class ToydarianPreset : SpeciesPreset
    {
        public override string SpeciesName
        {
            get { return "Toydarian"; }
        }

        public override string SpecialAbilities
        {
            get { return "Toydarians are smaller than average and count as silhouette 0."; }
        }

        public override uint MaxWounds
        {
            get { return 9; }
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
            return new Characteristics(1, 1, 2, 2, 3, 3);
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
                    Name = "Hoverer",
                    Description = "Toydarians have wings that allow them to hover slightly off the ground. When hovering, Toydarians do not " +
                                  "have to spend additional maneuvers when navigating difficult terrain. Otherwise, their wings allow them " +
                                  "no extra capabilities beyond those of a normal, walking character.",
                    PageNumber = 23,
                }
            };
        }
    }
}
