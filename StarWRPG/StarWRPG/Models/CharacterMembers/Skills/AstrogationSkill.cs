using System;
namespace StarWRPG.Models
{
	public class AstrogationSkill : Skill
	{
        public AstrogationSkill(Characteristic c) : base(c) { }

        protected override string SkillName
		{
			get
			{
				return "Astrogation";
			}
		}
	}
}
