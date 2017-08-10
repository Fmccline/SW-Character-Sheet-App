using System;
namespace StarWRPG.Models
{
	public class XenologySkill : Skill
	{
        public XenologySkill(Characteristic c) : base(c, "Xenology")
        {
            SkillUses.Add("When a character first encounters a member of an unfamiliar race, a Xeneology check can be made to " +
                          "determine how to interact with the individual.");
            SkillUses.Add("Xeneology may assist a character in determining a vulnerability of a species.");
            SkillUses.Add("Xeneology can be used to determine what different species need for environmental conditions and foodstuffs.");
        }
    }
}
