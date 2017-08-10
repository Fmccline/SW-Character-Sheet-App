using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace StarWRPG.Models
{
    public abstract class Skill : CharacteristicAndSkillBase
    {
        public Characteristic Characteristic { get; set; }
        public bool CanSetCharacteristic { get; protected set; }
        public bool IsCareer { get; set; }
        public string SkillName { get; set; }
        public List<string> SkillUses { get; set; }

        public override string Name
        {
            get { return SkillName + " (" + Characteristic.ShortName + ")"; }
            set
            {
                base.Name = value;
            }
        }

        protected Skill(Characteristic characteristic, string skillName)
        {
            Characteristic = characteristic;
            CanSetCharacteristic = false;
            IsCareer = false;
            SkillUses = new List<string>();
            // Page 182 of FaD book says max skill rank
            MaxRank = 6;
            Rank = 0;

            SkillName = skillName;
        }
    }
}
