﻿using System;
namespace StarWRPG
{
	public class Defense
	{
		public uint Ranged { get; set; }
		public uint Melee { get; set; }

		public Defense()
		{
			Ranged = 0;
			Melee = 0;
		}
	}
}