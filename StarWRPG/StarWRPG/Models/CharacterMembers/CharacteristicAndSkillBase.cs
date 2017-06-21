using System;
namespace StarWRPG.Models
{
	public abstract class CharacteristicAndSkillBase
	{
		public uint MaxRank;
		protected uint rank { get; set; }

		public abstract string Name { get; }
		public virtual uint Rank
		{
			get { return rank; }

			set
			{
				rank = value;
				if (rank > MaxRank)
					rank = MaxRank;
			}
		}

		protected CharacteristicAndSkillBase()
		{
			Rank = 0;
		}
	}
}