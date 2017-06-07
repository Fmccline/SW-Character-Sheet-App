using System;
namespace StarWRPG.Models
{
	public class AstrogationSkill : Skill
	{
        public AstrogationSkill(Characteristic c) : base(c) { }

        public override string SkillName
		{
			get
			{
				return "Astrogation";
			}
		}
	}
}
