using System;
namespace StarWRPG.Models
{
	public class Threshold
	{
		public uint Max { get; set; }
		public uint Current { get; set; }

		public Threshold(uint max)
		{
			Current = 0;
			Max = max;
		}
	}
}
