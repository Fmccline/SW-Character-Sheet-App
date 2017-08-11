using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class SullustanPreset : SpeciesPreset
    {
        public override string SpeciesName
        {
            get { return "Sullustan"; }
        }

        public override string SpecialAbilities
        {
            get { return "Sullustans begin the game with one rank in Astrogation." + AUTOMATIC; }
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
            return new Characteristics(2, 3, 2, 1, 2, 2);
        }

        public override List<Skill> InitializeSkills()
        {
            return new List<Skill>()
            {
                new AstrogationSkill(Characteristics.Intellect) { Rank = 1 },
            };
        }

        public override List<Talent> InitializeTalents()
        {
            return new List<Talent>();
        }
    }
}
