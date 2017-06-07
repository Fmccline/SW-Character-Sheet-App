using System;
namespace StarWRPG.Models
{
	public abstract class CharacteristicOrSkill
	{
		uint maxRank = 5;
		protected uint rank { get; set; }

		public abstract string Name { get; }
		public uint Rank
		{
			get { return rank; }

			set
			{
				rank = value;
				if (rank > maxRank)
					rank = maxRank;
			}
		}

		protected CharacteristicOrSkill()
		{
			Rank = 0;
		}
	}
}