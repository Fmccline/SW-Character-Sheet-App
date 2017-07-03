using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class CharacterMotivation
    {
        public string Name { get; set; }
        public string Type { get; set; }
        public string Description { get; set; }
        public uint Value { get; set; }

        public CharacterMotivation(string name)
        {
            Name = name;
            Type = "";
            Description = "";
        }
    }
}
