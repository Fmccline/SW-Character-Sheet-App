using System;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace StarWRPG.Models
{
    public abstract class Skill : CharacteristicAndSkillBase
    {
        public Characteristic Characteristic { get; set; }
        public bool CanSetCharacteristic { get; protected set; }
        public bool IsCareer { get; set; }
        protected string SkillName { get; set; }

        protected Skill(Characteristic characteristic)
        {
            Characteristic = characteristic;
            CanSetCharacteristic = false;
            IsCareer = false;
            // Page 102 of FaD book says max skill rank is 5
            MaxRank = 5;
            Name = SkillName + "(" + Characteristic.ShortName + ")";
        }
    }
}
