using System;
namespace StarWRPG.Models
{
	public class LightsaberSkill : Skill
	{
		
		public LightsaberSkill(Characteristic c) : base(c) { }

		public void SetCharacteristic(Characteristic c)
		{
			Characteristic = c;
		}

		public override string SkillName
        {
			get
			{
				return "Lightsaber";
			}
		}
	}
}
