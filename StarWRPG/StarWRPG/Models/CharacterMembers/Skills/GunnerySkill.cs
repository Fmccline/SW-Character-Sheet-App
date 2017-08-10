using System;
namespace StarWRPG.Models
{
	public class GunnerySkill : Skill
	{
        public GunnerySkill(Characteristic c) : base(c, "Gunnery")
        {
            SkillUses.Add("Using large mounted weapons require the Gunnery skill.");
        }
    }
}
