using System;
namespace StarWRPG.Models
{
	public class PilotingSpaceSkill : Skill
	{
        public PilotingSpaceSkill(Characteristic c) : base(c, "Piloting-Space")
        {
            SkillUses.Add("Whenever two or more spaceships race, a competitive Piloting-Space check determines the results.");
            SkillUses.Add("Chases are determined through an opposed Piloting-Space check.");
        }
    }
}
