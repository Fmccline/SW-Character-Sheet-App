using System;
namespace StarWRPG.Models
{
	public abstract class Characteristic : CharacteristicAndSkillBase
	{
		public abstract string ShortName { get; }
	}
}
