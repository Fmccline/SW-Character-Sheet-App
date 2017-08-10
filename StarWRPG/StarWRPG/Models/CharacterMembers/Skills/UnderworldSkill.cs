using System;
namespace StarWRPG.Models
{
	public class UnderworldSkill : Skill
	{
        public UnderworldSkill(Characteristic c) : base(c, "Underworld")
        {
            SkillUses.Add("The Underworld skill may be used to know what illegal activities take place on a worlds and who cordinates them.");
            SkillUses.Add("A familiarity with Underworld may be useful if the characters need to determine the most common methods used " +
                          "for a particular type of criminal activity.");
        }
    }
}
