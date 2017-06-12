using System;
namespace StarWRPG.Models
{
	public class AthleticsSkill : Skill
	{
		public AthleticsSkill(Characteristic c) : base(c) { }

        protected override string SkillName
        {
			get
			{
				return "Athletics";
			}
		}
	}
}
