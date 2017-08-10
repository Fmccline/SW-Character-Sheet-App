using System;
namespace StarWRPG.Models
{
	public class VigilanceSkill : Skill
	{
        public VigilanceSkill(Characteristic c) : base(c, "Vigilance")
        {
            SkillUses.Add("In combat situations where the character is unprepared for a fight, use Vigilance to determine initiative.");
            SkillUses.Add("Sometimes something may be noticed even though a character isn't looking for it. Use Vigilance to determine " +
                          "if that thing is noticed by the character.");
            SkillUses.Add("Vigilance represents how fastidious a character is about preparing for unexpected crises.");
        }
    }
}
