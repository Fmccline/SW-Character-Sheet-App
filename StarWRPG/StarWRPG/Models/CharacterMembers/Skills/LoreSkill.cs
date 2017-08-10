using System;
namespace StarWRPG.Models
{
	public class LoreSkill : Skill
	{
        public LoreSkill(Characteristic c) : base(c, "Lore")
        {
            SkillUses.Add("Any time a character needs to decipher an ancient piece of writing, he must make a Lore check.");
            SkillUses.Add("A character's knowledge of the exploits of an ancient hero is represented by the Lore skill.");
            SkillUses.Add("A character trying to learn about ancient Jedi traditions or attempting to master a Force " +
                          "technique must make a Lore check.");
        }
    }
}
