using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using StarWRPG.ViewModels;

namespace StarWRPG.Models
{
    public class ZabrakPreset : SpeciePreset
    {
        protected override void InitializeCharacteristics()
        {
            Characteristics = new Characteristics();
            Characteristics.Agility.Rank = 2;
            Characteristics.Brawn.Rank = 2;
            Characteristics.Cunning.Rank = 2;
            Characteristics.Intellect.Rank = 2;
            Characteristics.Presence.Rank = 1;
            Characteristics.Willpower.Rank = 3;
        }

        protected override void InitializeSkills()
        {
            Skills = new List<Skill>
            {
                new AstrogationSkill(Characteristics.Intellect) { Rank = 1 }
            };
        }

        protected override void InitializeTalents()
        {
            Talents = new List<Talent>
            {
                new Talent { Description = "Add one advantage to any coercion check.", Name = "Coercive Guy", PageNumber = 42 }
            };
        }

        protected override void InitializeThresholds()
        {
            MaxWounds = 10;
            MaxStrain = 12;
        }
    }
}
