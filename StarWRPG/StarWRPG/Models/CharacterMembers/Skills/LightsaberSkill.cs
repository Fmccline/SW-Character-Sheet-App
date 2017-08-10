using System;
using System.Collections.Generic;
using System.Diagnostics;

namespace StarWRPG.Models
{
	public class LightsaberSkill : Skill
	{
        public LightsaberSkill(Characteristic c) : base(c, "Lightsaber")
        {
            CanSetCharacteristic = true;
            SkillUses.Add("The difficulty of a Lightsaber attack is Average (two purples).");
            SkillUses.Add("This is the weapon of a Jedi Knight. Not as clumsy or as random as a blaster. - Ben Kenobi");
        }
    }
}
