using System;
namespace StarWRPG.Models
{
	public class WarefareSkill : Skill
	{
        public WarefareSkill(Characteristic c) : base(c, "Warefare")
        {
            SkillUses.Add("A character’s knowledge of the strategies and tactics of warfare is represented by the Warfare skill.");
            SkillUses.Add("Any time a character wants to remember details about a significant event, organization, or individual " +
                          "who played a role in a galactic struggle, he should make a Warfare check.");
        }
    }
}
