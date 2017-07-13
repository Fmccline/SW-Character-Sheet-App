using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class HumanPreset: SpeciesPreset
    {
        public override string SpeciesName
        {
            get { return "Human"; }
        }

        public override string SpecialAbilities
        {
            get { return "Humans start the game with one rank each in two different non-career skills of their choice." + MANUAL; }
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
            get { return 110; }
        }

        public override Characteristics InitializeCharacteristics()
        {
            return new Characteristics(2, 2, 2, 2, 2, 2);
        }

        public override List<Skill> InitializeSkills()
        {
            return new List<Skill>();
        }

        public override List<Talent> InitializeTalents()
        {
            return new List<Talent>();
        }
    }
}
