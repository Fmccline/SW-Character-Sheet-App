using System;
namespace StarWRPG.Models
{
	public class MechanicsSkill : Skill
	{
        public MechanicsSkill(Characteristic c) : base(c, "Mechanics")
        {
            SkillUses.Add("Any device that suffers physical damage can be repaired using Mechanics, with the proper tools.");
            SkillUses.Add("Droids are repaired with Mechanics.");
            SkillUses.Add("A character may use Mechanics to determine what parts are necessary for a repair job.");
            SkillUses.Add("Given the right components, attempts to construct new devices are dependant on the Mechanics skill.");
        }
    }
}
