using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace StarWRPG.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class CharacterInventoryPage : BasePage
    {
        protected override StackLayout mainStackLayout { get { return MainStackLayout; } }

        InventoryViewModel inventoryViewModel;

        ArmorsList armorsList;
        ItemsList itemsList;
        WeaponsList weaponsList;

        public CharacterInventoryPage(FFGCharacterViewModel characterViewModel) : base(characterViewModel)
        {
            InitializeComponent();

            inventoryViewModel = characterViewModel.InventoryViewModel;
            BindingContext = characterViewModel;

            armorsList = new ArmorsList(inventoryViewModel);
            itemsList = new ItemsList(inventoryViewModel);
            weaponsList = new WeaponsList(inventoryViewModel);

            WeaponsClicked(null,null);
        }

        public async void AddItemAsync(object sender, EventArgs e)
        {
            const string WEAPON = "Weapon";
            const string ARMOR = "Armor";
            const string ITEM = "Item";

            string itemType = await DisplayActionSheet("Type", "Cancel", null, WEAPON, ARMOR, ITEM);

            switch (itemType)
            {
                case WEAPON:
                    await Navigation.PushAsync(new WeaponPage(inventoryViewModel));
                    break;
                case ARMOR:
                    await Navigation.PushAsync(new ArmorPage(inventoryViewModel));
                    break;
                case ITEM:
                    await Navigation.PushAsync(new ItemPage(inventoryViewModel));
                    break;
            }
        }

        private void WeaponsClicked(object sender, EventArgs e)
        {
            ItemsLayout.Children.Clear();
            ItemsLayout.Children.Add(weaponsList);
            EnableAllButtons();
            WeaponsButton.IsEnabled = false;
        }

        private void ArmorClicked(object sender, EventArgs e)
        {
            ItemsLayout.Children.Clear();
            ItemsLayout.Children.Add(armorsList);
            EnableAllButtons();
            ArmorButton.IsEnabled = false;
        }

        private void ItemsClicked(object sender, EventArgs e)
        {
            ItemsLayout.Children.Clear();
            ItemsLayout.Children.Add(itemsList);
            EnableAllButtons();
            ItemsButton.IsEnabled = false;
        }

        private void EnableAllButtons()
        {
            ArmorButton.IsEnabled = true;
            ItemsButton.IsEnabled = true;
            WeaponsButton.IsEnabled = true;
        }
    }
}