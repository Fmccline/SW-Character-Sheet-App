using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    public class Inventory
    {
        public ObservableCollection<Item> Items;
        public ObservableCollection<Weapon> Weapons;
        public ObservableCollection<Armor> Armors;

        public Inventory()
        {
            Items = new ObservableCollection<Item>();
            Weapons = new ObservableCollection<Weapon>();
            Armors = new ObservableCollection<Armor>();
        }

        public void Add(Item item)
        {
            if (item.GetType() == typeof(Weapon))
            {
                Weapons.Add((Weapon)item);
            }
            else if (item.GetType() == typeof(Armor))
            {
                Armors.Add((Armor)item);
            }
            else
            {
                Items.Add(item);
            }
        }

        public void Remove(Item item)
        {
            if (item.GetType() == typeof(Weapon))
            {
                Weapons.Remove((Weapon)item);
            }
            else if (item.GetType() == typeof(Armor))
            {
                Armors.Remove((Armor)item);
            }
            else
            {
                Items.Remove(item);
            }
        }
    }
}
