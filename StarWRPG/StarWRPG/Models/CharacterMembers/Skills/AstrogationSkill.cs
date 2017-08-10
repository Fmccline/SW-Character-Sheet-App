using System;
using System.Collections.Generic;

namespace StarWRPG.Models
{
	public class AstrogationSkill : Skill
	{
        public AstrogationSkill(Characteristic c) : base(c, "Astrogation")
        {
            SkillUses.Add("Programming a navicomputer for a hyperspace jump requires a successful Astrogation check.");
            SkillUses.Add("Astrogation governs a character's basic knowledge of galactic geography.");
            SkillUses.Add("Astrogation also covers familiarity with the galaxy's hyperspace routes and the types of craft and commerce" +
                          " most common along those routes.");
        }
    }
}
