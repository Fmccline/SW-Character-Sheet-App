using System;
namespace StarWRPG.Models
{
	public class RangedLightSkill : Skill
	{
        public RangedLightSkill(Characteristic c) : base(c, "Ranged-Light")
        {
            SkillUses.Add("At short range, the difficulty of a Ranged-Light attack is Easy (one purple). For each range band " +
                          "after short, increase the difficulty by one.");
            SkillUses.Add("When engaged with your target, increase the difficulty of the attack by one.");
            SkillUses.Add("When an ally is engaged with your target, upgrade the difficulty of the attack. " +
                          "Despair generated is automatically spent to make your attack hit one of your allies.");
        }
    }
}
