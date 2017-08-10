using System;
namespace StarWRPG.Models
{
	public class CharmSkill : Skill
	{
        public CharmSkill(Characteristic c) : base(c, "Charm")
        {
            SkillUses.Add("Persuading an individual to make a special exception to his usual practices through " +
                          "flattery, flirtation, and grace typically relies on Charm.");
            SkillUses.Add("Appeals to a target's better nature (even if it does not exist) generally require a character to use Charm.");
            SkillUses.Add("Seduction attempts generally require Charm, unless the interest is entirely feigned. Then Deception is more appropriate.");
        }
    }
}
