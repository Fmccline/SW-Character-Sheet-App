using System;
namespace StarWRPG.Models
{
	public abstract class Characteristic : CharacterAndSkillBase
	{
		public abstract string ShortName { get; }
	}
}
