using System;
namespace StarWRPG.Models
{
	public class MeleeSkill : Skill
	{
        public MeleeSkill(Characteristic c) : base(c, "Melee")
        {
            SkillUses.Add("The difficulty of a Melee attack is Average (two purples).");
        }
    }
}
