using System;
namespace StarWRPG.Models
{
	public class NegotiationSkill : Skill
	{
        public NegotiationSkill(Characteristic c) : base(c, "Negotiation")
        {
            SkillUses.Add("Any time a character wishes to purchase goods or services, he must either pay the sell's asking price " +
                          "or use the Negotiation skill to haggle.");
            SkillUses.Add("If a character wishes to sell goods or services, the final price is determined by a Negotiation check.");
            SkillUses.Add("When two individuals create an agreement or treaty, they make an opposed Negotiations check. The winner " +
                          " gains the better end of the agreement.");
        }
    }
}
