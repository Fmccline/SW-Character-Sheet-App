using System;
namespace StarWRPG.Models
{
	public abstract class CharacteristicAndSkillBase
	{
        protected uint rank;

        public virtual string Name { get; set; }
        public uint MaxRank;
		public uint Rank
		{
			get { return rank; }

			set
			{
				rank = value;
				if (rank > MaxRank)
					rank = MaxRank;
			}
		}
	}
}