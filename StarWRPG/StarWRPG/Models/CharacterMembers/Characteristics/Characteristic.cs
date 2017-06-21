using System;
namespace StarWRPG.Models
{
	public abstract class Characteristic : CharacteristicAndSkillBase
	{
		public abstract string ShortName { get; }

        public Characteristic()
        {
            // Page 102 of FaD book says max characteristic is 6
            MaxRank = 6;
        }
    }
}
