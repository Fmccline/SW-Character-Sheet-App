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
    public partial class CharacterInventoryEntryPage : CharacterCreationBasePage
    {
        InventoryViewModel inventoryViewModel;

        public CharacterInventoryEntryPage(FaDCharacterViewModel characterViewModel) : base(characterViewModel)
        {
            InitializeComponent();

            inventoryViewModel = characterViewModel.InventoryViewModel;
            BindingContext = inventoryViewModel;

            MainStackLayout.Children.Insert(0, new CharacterCreationNavigationButtons(characterViewModel, GetType()));
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
                    await Navigation.PushModalAsync(new WeaponPage(inventoryViewModel));
                    break;
                case ARMOR:
                    await Navigation.PushModalAsync(new ArmorPage(inventoryViewModel));
                    break;
                case ITEM:
                    await Navigation.PushModalAsync(new ItemPage(inventoryViewModel));
                    break;
            }
        }

        private async void ArmorSelectedAsync(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem is ArmorViewModel armor)
            {
                await Navigation.PushModalAsync(new ArmorPage(inventoryViewModel, armor));
                ArmorsListView.SelectedItem = null;
            }
        }

        private async void ItemSelectedAsync(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem is ItemViewModel item)
            {
                await Navigation.PushModalAsync(new ItemPage(inventoryViewModel, item));
                ItemsListView.SelectedItem = null;
            }
        }

        private async void WeaponSelectedAsync(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem is WeaponViewModel weapon)
            {
                await Navigation.PushModalAsync(new WeaponPage(inventoryViewModel,weapon));
                WeaponsListView.SelectedItem = null;
            }
        }
    }
}