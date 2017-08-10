using System;
namespace StarWRPG.Models
{
	public class OuterRimSkill : Skill
	{
        public OuterRimSkill(Characteristic c) : base(c, "Outer Rim")
        {
            SkillUses.Add("An Outer Rim check can be used to find particular resources or services in the Outer Rim.");
            SkillUses.Add("At times when a character must interact with a person from the Outer Rim, the Outer Rim " +
                          "skill can be used to dertimine appropriate customs or traditions.");
        }
    }
}
