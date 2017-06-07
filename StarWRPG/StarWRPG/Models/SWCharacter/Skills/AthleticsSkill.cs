using System;
namespace StarWRPG.Models
{
	public class AthleticsSkill : Skill
	{
		public AthleticsSkill(Characteristic c) : base(c) { }

		public override string SkillName
        {
			get
			{
				return "Athletics";
			}
		}
	}
}
