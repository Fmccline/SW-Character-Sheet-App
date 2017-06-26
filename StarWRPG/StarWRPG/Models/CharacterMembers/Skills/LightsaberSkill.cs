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
        }
    }
}
