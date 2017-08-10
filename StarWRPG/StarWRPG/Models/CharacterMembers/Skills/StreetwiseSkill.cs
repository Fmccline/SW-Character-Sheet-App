using System;
namespace StarWRPG.Models
{
	public class StreetwiseSkill : Skill
	{
        public StreetwiseSkill(Characteristic c) : base(c, "Streetwise")
        {
            SkillUses.Add("Streetwise represents a character's instinct for picking up on subtle cues in the language and attitudes " +
                          "of those who operate outside of legal structures.");
            SkillUses.Add("If a character is looking for a merchant who specializes in unsavory goods or illicit services, " +
                          "they may use a Streetwise check.");
            SkillUses.Add("Knowing how to properly open conversations with criminals or underworld elements uses Streetwise.");
        }
    }
}
