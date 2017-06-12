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

		protected override string SkillName
        {
			get
			{
				return "Lightsaber";
			}
		}
	}
}
