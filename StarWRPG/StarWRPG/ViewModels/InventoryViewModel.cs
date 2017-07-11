using StarWRPG.Models;
using System;
using System.Collections.ObjectModel;
using Xamarin.Forms;

namespace StarWRPG.ViewModels
{
    public class InventoryViewModel : ViewModelBase
    {
        Inventory Inventory;

        public ObservableCollection<ItemViewModel> Items { get; private set; }
        public ObservableCollection<WeaponViewModel> Weapons { get; private set; }
        public ObservableCollection<ArmorViewModel> Armors { get; private set; }

        public InventoryViewModel(Inventory inventory)
        {
            Inventory = inventory;
            InitializeInventory();
        }

        private void Add(ItemViewModel item)
        {
            if (item.GetType() == typeof(WeaponViewModel))
            {
                Weapons.Add((WeaponViewModel)item);
            }
            else if (item.GetType() == typeof(ArmorViewModel))
            {
                Armors.Add((ArmorViewModel)item);
            }
            else
            {
                Items.Add(item);
            }
            Inventory.Add(item.Item);
        }

        private bool ContainsItem(ItemViewModel item)
        {
            if (item.GetType() == typeof(WeaponViewModel))
            {
                return (Weapons.Contains(item as WeaponViewModel));
            }
            else if (item.GetType() == typeof(ArmorViewModel))
            {
                return (Armors.Contains(item as ArmorViewModel));
            }
            else
            {
                return (Items.Contains(item as ItemViewModel));
            }
        }

        private void InitializeInventory()
        {
            InitializeArmors();
            InitializeItems();
            InitializeWeapons();
        }

        private void InitializeArmors()
        {
            Armors = new ObservableCollection<ArmorViewModel>();
            foreach (var armor in Inventory.Armors)
            {
                Armors.Add(new ArmorViewModel(armor));
            }
        }

        private void InitializeItems()
        {
            Items = new ObservableCollection<ItemViewModel>();
            foreach (var item in Inventory.Items)
            {
                Items.Add(new ItemViewModel(item));
            }
        }

        private void InitializeWeapons()
        {
            Weapons = new ObservableCollection<WeaponViewModel>();
            foreach (var weapon in Inventory.Weapons)
            {
                Weapons.Add(new WeaponViewModel(weapon));
            }
        }

        public void Insert(ItemViewModel item)
        {
            if (!ContainsItem(item))
            {
                Add(item);
            }
        }

        public void Remove(ItemViewModel item)
        {
            if (!ContainsItem(item))
            {
                return;
            }
            if (item.GetType() == typeof(WeaponViewModel))
            {
                Weapons.Remove((WeaponViewModel)item);
            }
            else if (item.GetType() == typeof(ArmorViewModel))
            {
                Armors.Remove((ArmorViewModel)item);
            }
            else
            {
                Items.Remove(item);
            }
            Inventory.Remove(item.Item);
        }
    }
}
