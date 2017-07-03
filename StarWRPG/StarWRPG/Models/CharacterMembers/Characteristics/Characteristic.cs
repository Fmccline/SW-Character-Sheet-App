using System;
namespace StarWRPG.Models
{
	public abstract class Characteristic : CharacteristicAndSkillBase
	{
		public string ShortName { get; protected set; }

        public Characteristic()
        {
            // Page 182 of FaD book says max characteristic is 7
            MaxRank = 7;
            Rank = 0;
        }
    }
}
