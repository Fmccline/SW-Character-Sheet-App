using System;
namespace StarWRPG.Models
{
	public class ResilienceSkill : Skill
	{
        public ResilienceSkill(Characteristic c) : base(c, "Resilience")
        {
            SkillUses.Add("Whenever a character attempts to go without sleep for significantly longer than is healthy for their species, " +
                          "they make a Resilience check to remain awake.");
            SkillUses.Add("If a character ingests a toxin, they use Resilience to resist its effects.");
            SkillUses.Add("When a character endures long exposure to hostile environments, the consequences may " +
                          "be mitigated through a Resilience check.");
        }
    }
}
