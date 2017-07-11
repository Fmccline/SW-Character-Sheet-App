using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace StarWRPG.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class WeaponsList : ContentView
	{
        InventoryViewModel inventoryViewModel;

        public WeaponsList(InventoryViewModel inventory)
        {
            InitializeComponent();

            inventoryViewModel = inventory;
            BindingContext = inventory;
        }

        private async void WeaponSelectedAsync(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem is WeaponViewModel weapon)
            {
                await Navigation.PushModalAsync(new WeaponPage(inventoryViewModel, weapon));
                WeaponsListView.SelectedItem = null;
            }
        }
    }
}