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
    public partial class CharacterInventoryEntryPage : ContentPage
    {
        InventoryViewModel inventoryViewModel;

        public CharacterInventoryEntryPage(FaDCharacterViewModel characterViewModel)
        {
            InitializeComponent();

            inventoryViewModel = new InventoryViewModel(characterViewModel.FaDCharacter);
            BindingContext = inventoryViewModel;

            MainStackLayout.Children.Insert(0, new CharacterCreationNavigationButtons(characterViewModel, GetType()));
        }

        private void ItemSelection(object sender, EventArgs e)
        {

        }

        private void OnSwitchChanged(object sender, ToggledEventArgs e)
        {
            //var switchChanged = sender as Switch;

            //if (switchChanged == WeaponsSwitch)
            //    WeaponsListView.IsVisible = !WeaponsListView.IsVisible;
            //else if (switchChanged == ArmorsSwitch)
            //    ArmorsListView.IsVisible = !ArmorsListView.IsVisible;
            //else if (switchChanged == ItemsSwitch)
            //    ItemsListView.IsVisible = !ItemsListView.IsVisible;
        }

        private async void AddItemAsync(object sender, EventArgs e)
        {
            await Navigation.PushModalAsync(new AddItemPage(inventoryViewModel));
        }
    }
}