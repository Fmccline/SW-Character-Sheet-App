using System;
namespace StarWRPG.Models
{
	public class PerceptionSkill : Skill
	{
        public PerceptionSkill(Characteristic c) : base(c, "Perception")
        {
            SkillUses.Add("Skullduggery (and Stealth) checks are often opposed by a target's Perception");
            SkillUses.Add("Perception can be used in surveillance situations, in which the user is trying to observe an unaware target.");
            SkillUses.Add("The character can make a Perception check if he wants to check his surroundings for a subtle clue.");
        }
    }
}
