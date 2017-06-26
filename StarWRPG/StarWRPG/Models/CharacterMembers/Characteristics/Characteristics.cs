using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class Characteristics
    {
        public AgilityCharacteristic Agility;
        public BrawnCharacteristic Brawn;
        public CunningCharacteristic Cunning;
        public IntellectCharacteristic Intellect;
        public PresenceCharacteristic Presence;
        public WillpowerCharacteristic Willpower;

        public Characteristics()
        {
            Agility = new AgilityCharacteristic();
            Brawn = new BrawnCharacteristic();
            Cunning = new CunningCharacteristic();
            Intellect = new IntellectCharacteristic();
            Presence = new PresenceCharacteristic();
            Willpower = new WillpowerCharacteristic();
        }
    }
}
