using StarWRPG.Models;
using System;
using System.Collections.ObjectModel;
using System.Diagnostics;
using Xamarin.Forms;

namespace StarWRPG.ViewModels
{
    public class InventoryViewModel : ViewModelBase
    {
        FFGCharacterViewModel ffgCharacterViewModel;
        Inventory Inventory;

        public ObservableCollection<ItemViewModel> Items { get; private set; }
        public ObservableCollection<WeaponViewModel> Weapons { get; private set; }
        public ObservableCollection<ArmorViewModel> Armors { get; private set; }

        public InventoryViewModel(FFGCharacterViewModel character, Inventory inventory)
        {
            ffgCharacterViewModel = character;
            Inventory = inventory;
            InitializeInventory();
            SetEncumbrance();
        }

        private void ItemViewModelChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            if (e.PropertyName.Equals(nameof(ItemViewModel.Encumbrance)) || e.PropertyName.Equals(nameof(ItemViewModel.Quantity)))
            {
                SetEncumbrance();
            }
        }

        private void SetEncumbrance()
        {
            uint totalEncumbrance = 0;
            foreach (var item in Items)
            {
                totalEncumbrance += item.Encumbrance * item.Quantity;
            }
            foreach (var weapon in Weapons)
            {
                totalEncumbrance += weapon.Encumbrance * weapon.Quantity;
            }
            foreach (var armor in Armors)
            {
                totalEncumbrance += armor.Encumbrance * armor.Quantity;
            }
            ffgCharacterViewModel.CurrentEncumbrance = totalEncumbrance;
        }

        private void Add(ItemViewModel item)
        {
            item.PropertyChanged += ItemViewModelChanged;
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
            if (item.Encumbrance > 0)
            {
                SetEncumbrance();
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
                var armorViewModel = new ArmorViewModel(armor);
                armorViewModel.PropertyChanged += ItemViewModelChanged;
                Armors.Add(armorViewModel);
            }
        }

        private void InitializeItems()
        {
            Items = new ObservableCollection<ItemViewModel>();
            foreach (var item in Inventory.Items)
            {
                var itemViewModel = new ItemViewModel(item);
                itemViewModel.PropertyChanged += ItemViewModelChanged;
                Items.Add(itemViewModel);
            }
        }

        private void InitializeWeapons()
        {
            Weapons = new ObservableCollection<WeaponViewModel>();
            foreach (var weapon in Inventory.Weapons)
            {
                var weaponViewModel = new WeaponViewModel(weapon);
                weaponViewModel.PropertyChanged += ItemViewModelChanged;
                Weapons.Add(weaponViewModel);
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
            if (item.Encumbrance > 0)
            {
                SetEncumbrance();
            }
            Inventory.Remove(item.Item);
        }
    }
}
