using System;
namespace StarWRPG.Models
{
	public class CoordinationSkill : Skill
	{
        public CoordinationSkill(Characteristic c) : base(c, "Coordination")
        {
            SkillUses.Add("A character may attempt to reduce damage suffered from falling with a successful Coordination check.");
            SkillUses.Add("Walking across narrow surfaces requires Coordination.");
            SkillUses.Add("Characters can use Coordination to escape from restraints, contorting their limbs at unusual angles so " +
                          "that binding slip free.");
        }
    }
}
