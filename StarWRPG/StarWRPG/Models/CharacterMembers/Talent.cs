using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class Talent
    {
        public string Description { get; set; }
        public string Name { get; set; }
        public uint PageNumber { get; set; }

        public Talent()
        {
            Description = "";
            Name = "";
        }
    }
}
