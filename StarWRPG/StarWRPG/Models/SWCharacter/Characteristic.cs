using System;
namespace StarWRPG
{
	public abstract class Characteristic : CharacteristicOrSkill
	{
		public abstract string ShortName { get; }
	}
}
