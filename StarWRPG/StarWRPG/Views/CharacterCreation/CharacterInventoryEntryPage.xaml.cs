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

            inventoryViewModel = new InventoryViewModel(characterViewModel.Inventory);
            BindingContext = inventoryViewModel;

            MainStackLayout.Children.Insert(0, new CharacterCreationNavigationButtons(characterViewModel, GetType()));
        }

        private void ItemSelection(object sender, EventArgs e)
        {

        }

        public async void AddItemAsync(object sender, EventArgs e)
        {
            const string weapon = "Weapon";
            const string armor = "Armor";
            const string item = "Item";

            string itemType = await DisplayActionSheet("Type", "Cancel", null, weapon, armor, item);

            switch (itemType)
            {
                case weapon:
                    await Navigation.PushModalAsync(new WeaponPage(inventoryViewModel));
                    break;
                case armor:
                    await Navigation.PushModalAsync(new ArmorPage(inventoryViewModel));
                    break;
                case item:
                    await Navigation.PushModalAsync(new ItemPage(inventoryViewModel));
                    break;
            }
        }
    }
}