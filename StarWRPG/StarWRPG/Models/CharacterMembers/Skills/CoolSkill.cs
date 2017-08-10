using System;
namespace StarWRPG.Models
{
	public class CoolSkill : Skill
	{
        public CoolSkill(Characteristic c) : base(c, "Cool")
        {
            SkillUses.Add("In some situations a character's initiative may be determined through a Cool check. This is applicable under " +
                          "circumstances in which the character has prepared to take action.");
            SkillUses.Add("A character's Cool is used to resist Charm and Negotiation.");
            SkillUses.Add("Often when someone is being overly kind, authenticity becomes lost among the niceties. Characters can use Cool " +
                          "to resist these efforts.");
        }
    }
}
