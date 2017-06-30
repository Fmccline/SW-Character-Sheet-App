using StarWRPG.Models;
using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public abstract class SpeciePreset
    {
        public abstract Characteristics Characteristics { get; }
        public abstract List<Talent> Talents { get; }
        public abstract List<Skill> Skills { get; }

        public abstract string Name { get; }
        public abstract string SpecialAbilities { get; }

        public abstract uint MaxWounds { get; }
        public abstract uint MaxStrain { get; }
        public abstract uint StartingXP { get; }
    }
}
