using System;
namespace StarWRPG.Models
{
	public class SurvivalSkill : Skill
	{
        public SurvivalSkill(Characteristic c) : base(c, "Survival")
        {
            SkillUses.Add("Identifying safe foods, potable water, or shelter in a natural environment requires a Survival check.");
            SkillUses.Add("Characters skilled in Survival understand weather patterns and the signs of imminent dangerous conditions.");
            SkillUses.Add("Tracking a subject through the wilderness is dependant upon Survival.");
        }
    }
}
