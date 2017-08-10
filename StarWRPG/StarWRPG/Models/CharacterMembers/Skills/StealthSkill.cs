using System;
namespace StarWRPG.Models
{
	public class StealthSkill : Skill
	{
        public StealthSkill(Characteristic c) : base(c, "Stealth")
        {
            SkillUses.Add("Attempts to hide from an opponent are dependant upon Stealth.");
            SkillUses.Add("Stealth can allow characters to shadow or follow other individuals undetected.");
            SkillUses.Add("Characters may attempt to hide people or objects from the attentions of others, either through concealment " +
                          "or misdirection.");
        }
    }
}
