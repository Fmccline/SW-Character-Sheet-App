using System;
namespace StarWRPG.Models
{
	public class CoreWorldsSkill : Skill
	{
        public CoreWorldsSkill(Characteristic c) : base(c, "Core Worlds")
        {
            SkillUses.Add("If a character needs to identify a person's planet of origin, they may make a Core Worlds check.");
            SkillUses.Add("When interacting with someone from a Core World, make a Core Worlds check to know what " +
                          "behaviors are polite or offensive.");
            SkillUses.Add("Characters can make a Core Worlds check to identify which markets are the best places to sell " +
                          "or purchase a particular cargo.");
        }
    }
}
