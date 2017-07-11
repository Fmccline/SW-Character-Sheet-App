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
	public partial class ArmorsList : ContentView
	{
        InventoryViewModel inventoryViewModel;

		public ArmorsList (InventoryViewModel inventory)
		{
			InitializeComponent ();

            inventoryViewModel = inventory;
            BindingContext = inventory;
        }

        private async void ArmorSelectedAsync(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem is ArmorViewModel armor)
            {
                await Navigation.PushModalAsync(new ArmorPage(inventoryViewModel, armor));
                ArmorsListView.SelectedItem = null;
            }
        }
    }
}