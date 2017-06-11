using System;
namespace StarWRPG.Models
{
	public abstract class CharacterAndSkillBase
	{
		protected uint maxRank = 5;
		protected uint rank { get; set; }

		public abstract string Name { get; }
		public virtual uint Rank
		{
			get { return rank; }

			set
			{
				rank = value;
				if (rank > maxRank)
					rank = maxRank;
			}
		}

		protected CharacterAndSkillBase()
		{
			Rank = 0;
		}
	}
}