using System;
namespace StarWRPG.Models
{
	public class ComputersSkill : Skill
	{
        public ComputersSkill(Characteristic c) : base(c, "Computers")
        {
            SkillUses.Add("Attempts to open a locked door, control an elevator, or bypass a security system make use of the Computers skill.");
            SkillUses.Add("Efforts to alter a droid's programming or gain access to its memories requires a Computes check.");
            SkillUses.Add("Slicing systems or investigating the actions of a slicer make use of the Computers skill.");
        }
    }
}
