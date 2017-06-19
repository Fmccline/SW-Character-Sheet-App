using StarWRPG.Models;
using System.Collections.ObjectModel;
using Xamarin.Forms;

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

        bool weaponsIsVisible { get; set; }
        bool armorsIsVisible { get; set; }
        bool itemsIsVisible { get; set; }

        public bool WeaponsIsVisible
        {
            get { return weaponsIsVisible; }
            set
            {
                weaponsIsVisible = value;
                OnPropertyChanged();
            }
        }
        public bool ArmorsIsVisible
        {
            get { return armorsIsVisible; }
            set
            {
                armorsIsVisible = value;
                OnPropertyChanged();
            }
        }
        public bool ItemsIsVisible
        {
            get { return itemsIsVisible; }
            set
            {
                itemsIsVisible = value;
                OnPropertyChanged();
            }
        }

        public InventoryViewModel(Inventory inventory)
        {
            Inventory = inventory;
            weaponsIsVisible = true;
            armorsIsVisible = true;
            itemsIsVisible = true;
        }

        public InventoryViewModel(FaDCharacter character) : this(character.Inventory) { }

        public void Add(Item item)
        {
            Inventory.Add(item);
        }
    }
}
