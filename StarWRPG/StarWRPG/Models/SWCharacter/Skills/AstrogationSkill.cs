using System;
namespace StarWRPG
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
