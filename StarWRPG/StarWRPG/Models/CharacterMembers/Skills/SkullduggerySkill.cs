using System;
namespace StarWRPG.Models
{
	public class SkullduggerySkill : Skill
	{
        public SkullduggerySkill(Characteristic c) : base(c, "Skullduggery")
        {
            SkillUses.Add("If a character attempts to pick a lock or pocket, he uses Skullduggery.");
            SkillUses.Add("Identifying the most vulnerable aspects of a security scheme can be nearly intuitive for a character " +
                          "practiced in Skullduggery.");
        }
    }
}
