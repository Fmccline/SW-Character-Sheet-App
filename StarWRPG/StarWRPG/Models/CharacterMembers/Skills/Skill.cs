using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace StarWRPG.Models
{
    public abstract class Skill : CharacteristicAndSkillBase
    {
        public Characteristic Characteristic { get; set; }
        public bool IsCareer { get; set; }
        public override string Name
        {
            get { return SkillName + " (" + Characteristic.ShortName + ")"; }
        }
        protected abstract string SkillName { get; }

        protected Skill(Characteristic characteristic)
        {
            Characteristic = characteristic;
            IsCareer = false;
        }
    }
}
