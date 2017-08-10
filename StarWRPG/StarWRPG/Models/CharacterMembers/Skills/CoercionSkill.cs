using System;
namespace StarWRPG.Models
{
	public class CoercionSkill : Skill
	{
        public CoercionSkill(Characteristic c) : base(c, "Coercion")
        {
            SkillUses.Add("Any time a character issues a threat, whether or not accompanied by hostile actions, he is using Coercion " +
                          "against the subject.");
            SkillUses.Add("Acts of physical torture always invoke Coercion.");
            SkillUses.Add("Even a small action such as gesturing towards a weapon is sufficient to invoke Coercion.");
        }
    }
}
