using System;
namespace StarWRPG.Models
{
	public class DeceptionSkill : Skill
	{
        public DeceptionSkill(Characteristic c) : base(c, "Deception")
        {
            SkillUses.Add("Whenever a character lies or stretches the truth, make a Deception check.");
            SkillUses.Add("When pursued, a character may choose to use Deception as means to lay a false trail, in hope that the " +
                          "tracker might make a wrong turn.");
            SkillUses.Add("Anytime a character wishes to distract an opponent through guile he may make use of Deception.");
        }
    }
}
