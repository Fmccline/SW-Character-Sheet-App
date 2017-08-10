using System;
namespace StarWRPG.Models
{
	public class DisciplineSkill : Skill
	{
        public DisciplineSkill(Characteristic c) : base(c, "Discipline")
        {
            SkillUses.Add("If a character is pinned down by heavy fire, he may need to pass a Discipline check in order to act normally.");
            SkillUses.Add("Often when summoning the Force, the character may need to pass a Discipline check.");
            SkillUses.Add("When confronted by a creature with inherintly horrifying aspects, a character's ability to remain unphased " +
                          "is governed by the Discipline skill.");
            SkillUses.Add("A character may make use of Discipline to resist opposing Coercion, Deception, and Leadership checks.");
        }
    }
}
