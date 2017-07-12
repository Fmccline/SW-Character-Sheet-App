using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class Item
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public bool IsEquipped { get; set; }
        public uint Encumbrance { get; set; }
        public uint Quantity { get; set; }

        public Item()
        {
            Name = "";
            Description = "";
            Quantity = 1;
        }
    }
}
