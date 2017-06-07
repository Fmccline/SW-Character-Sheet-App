using System;
namespace StarWRPG.Models
{
	public abstract class Characteristic : CharacteristicOrSkill
	{
		public abstract string ShortName { get; }
	}
}
