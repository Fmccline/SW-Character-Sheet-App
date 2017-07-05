using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class CharacterMotivationBase
    {
        public string Name { get; set; }
        public string Type { get; set; }
        public string Description { get; set; }
        public bool HasValue { get; protected set; }
        public uint Value { get; set; }

        public CharacterMotivationBase(string name)
        {
            Name = name;
            Type = "";
            Description = "";
            HasValue = false;
        }
    }
}
