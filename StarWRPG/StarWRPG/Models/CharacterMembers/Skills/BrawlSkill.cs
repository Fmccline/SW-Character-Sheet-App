using System;
namespace StarWRPG.Models
{
	public class BrawlSkill : Skill
	{
        public BrawlSkill(Characteristic c) : base(c, "Brawl")
        {
            SkillUses.Add("The difficulty of a Brawl attack is Average (two purples).");
        }
    }
}
