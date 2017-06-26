using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class CustomSkill : Skill
    {
        public CustomSkill(Characteristic c, string skillName) : base(c, skillName)
        {
            CanSetCharacteristic = true;
        }
    }
}
