using System;
namespace StarWRPG
{
	public abstract class Skill : CharacteristicOrSkill
	{
		public Characteristic Characteristic { get; set; }

        public override string Name
        {
           get { return SkillName + " (" + Characteristic.ShortName + ")"; }
        }

        public abstract string SkillName { get; }

        protected Skill(Characteristic characteristic)
		{
			Characteristic = characteristic;
		}
	}
}
