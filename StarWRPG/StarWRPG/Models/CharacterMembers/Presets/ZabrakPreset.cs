using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using StarWRPG.ViewModels;

namespace StarWRPG.Models
{
    public class ZabrakPreset : SpeciePreset
    {
        Characteristics characteristics;
        List<Talent> talents;
        List<Skill> skills;

        public override Characteristics Characteristics
        {
            get
            {
                if (characteristics == null)
                {
                    characteristics = new Characteristics
                    {
                        Agility = new AgilityCharacteristic { Rank = 2 },
                        Brawn = new BrawnCharacteristic { Rank = 2 },
                        Cunning = new CunningCharacteristic { Rank = 2 },
                        Intellect = new IntellectCharacteristic { Rank = 2 },
                        Presence = new PresenceCharacteristic { Rank = 1 },
                        Willpower = new WillpowerCharacteristic { Rank = 3 },
                    };
                }
                return characteristics;
            }
        }
        public override List<Talent> Talents
        {
            get
            {
                if (talents == null)
                {
                    talents = new List<Talent>
                    {
                        new Talent
                        {
                            Description = "Zabrak add automatic advantage to all Coercion checks they make.",
                            Name = "Fearsome Countenance",
                            PageNumber = 63
                        }
                    };
                }
                return talents;
            }
        }
        public override List<Skill> Skills
        {
            get
            {
                if (skills == null)
                {
                    skills = new List<Skill>
                    {
                        new AstrogationSkill(Characteristics.Intellect) { Rank = 1 }
                    };
                }
                return skills;
            }
        }

        public override string Name
        {
            get { return "Zabrak"; }
        }
        public override string SpecialAbilities
        {
            get { return "Zabrak begin the game with one rank in Survival (This is automatically added to your character)."; }
        }
        public override uint MaxWounds
        {
            get { return 10; }
        }
        public override uint MaxStrain
        {
            get { return 10; }
        }
        public override uint StartingXP
        {
            get { return 100; }
        }
    }
}
