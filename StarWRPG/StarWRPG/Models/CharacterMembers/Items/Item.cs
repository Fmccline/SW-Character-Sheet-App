using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class Item
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public bool IsEquipped { get; set; }

        public Item()
        {
            IsEquipped = false;
        }
    }
}
