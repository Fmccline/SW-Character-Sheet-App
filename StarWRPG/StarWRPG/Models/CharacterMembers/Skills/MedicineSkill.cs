using System;
namespace StarWRPG.Models
{
	public class MedicineSkill : Skill
	{
        public MedicineSkill(Characteristic c) : base(c, "Medicine")
        {
            SkillUses.Add("Routin first aid, including use of medpacs, depend upon a character's abilities in Medicine." +
                          "The difficulty may be complicated depending on the severity of the wounds.");
            SkillUses.Add("The ability to treat poison--or to inflict it--falls under the Medicine skill.");
            SkillUses.Add("A well-traveled medical technician may become familiar with both symptoms and " +
                          "treatments for many planetary syndromes");
        }
    }
}
