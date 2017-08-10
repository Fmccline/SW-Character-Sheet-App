using System;
namespace StarWRPG.Models
{
	public class AthleticsSkill : Skill
	{
        public AthleticsSkill(Characteristic c) : base(c, "Athletics")
        {
            SkillUses.Add("All aspects of climbing--including rappelling and swinging on a line--fall under the purview of the Athletics skill.");
            SkillUses.Add("Characters who attempt to swim in difficult conditions or run for an extended amount of time must check their Athletics.");
            SkillUses.Add("A character's vertical and horizontal jump are determined through an Athletics check.");
        }
    }
}
