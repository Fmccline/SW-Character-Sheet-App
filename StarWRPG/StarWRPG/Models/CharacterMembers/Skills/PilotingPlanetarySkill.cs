using System;
namespace StarWRPG.Models
{
	public class PilotingPlanetarySkill : Skill
	{
        public PilotingPlanetarySkill(Characteristic c) : base(c, "Piloting-Planetary")
        {
            SkillUses.Add("If a character is confronted by a completely foreign type of atmospheric craft, he must make a " +
                          "Piloting-Planertary check to decipher the controls.");
            SkillUses.Add("Any time two characters are involved in a vehicle race upon a world's surface, the results are " +
                          "determined through a competitive Piloting-Planetary check.");
            SkillUses.Add("If you are chasing or being chased by another vehicle, losing or maintaining the tail is done through " +
                          "an opposed Piloting-Planetary check.");
        }
    }
}
