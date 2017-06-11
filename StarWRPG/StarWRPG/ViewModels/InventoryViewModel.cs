using StarWRPG.Models;
using System.Collections.ObjectModel;


namespace StarWRPG.ViewModels
{
    public class InventoryViewModel : ViewModelBase
    {
        public Inventory Inventory;

        public ObservableCollection<Item> Items
        {
            get { return Inventory.Items; }
            set { Inventory.Items = value; }
        }
        public ObservableCollection<Weapon> Weapons
        {
            get { return Inventory.Weapons; }
            set { Inventory.Weapons = value; }
        }
        public ObservableCollection<Armor> Armors
        {
            get { return Inventory.Armors; }
            set { Inventory.Armors = value; }
        }

        public InventoryViewModel(Inventory inventory)
        {
            Inventory = inventory;
        }

        public void Add(Item item)
        {
            Inventory.Add(item);
        }
    }
}
