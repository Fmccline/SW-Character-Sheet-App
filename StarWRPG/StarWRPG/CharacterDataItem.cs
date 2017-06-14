using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG
{
    public class CharacterDataItem
    {
        [PrimaryKey]
        public uint ID { get; set; }
        public string CharacterAsJSON { get; set; }
    }
}
