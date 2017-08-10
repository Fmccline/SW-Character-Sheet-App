using System;
namespace StarWRPG.Models
{
	public class EducationSkill : Skill
	{
        public EducationSkill(Characteristic c) : base(c, "Education")
        {
            SkillUses.Add("Any time a character needs to interact with a government entity, an Education check may be " +
                          "used to determine how to proceed.");
            SkillUses.Add("If a character needs to employ basic scientific knowledge, his understanding of the field is represented by " +
                          "his Education skill.");
        }
    }
}
