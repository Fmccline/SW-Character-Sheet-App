using System;
namespace StarWRPG.Models
{
	public class LeadershipSkill : Skill
	{
        public LeadershipSkill(Characteristic c) : base(c, "Leadership")
        {
            SkillUses.Add("Leadership is a combination of making smart decisions, being firm and decisive when doing so, and instilling " +
                          "a sense of loyalty and respect in one's subordinates.");
            SkillUses.Add("If a character's allies have become subject to the effects of fear, they may be rallied through a Leadership check.");
            SkillUses.Add("When acting in a public venue, a character may use Leadership to sway a crowd to take action.");
        }
    }
}
