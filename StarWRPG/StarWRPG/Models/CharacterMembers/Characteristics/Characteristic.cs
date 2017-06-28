using System;
namespace StarWRPG.Models
{
	public abstract class Characteristic : CharacteristicAndSkillBase
	{
		public string ShortName { get; protected set; }

        public Characteristic()
        {
            // Page 102 of FaD book says max characteristic is 6
            MaxRank = 6;
            Rank = 1;
        }
    }
}
