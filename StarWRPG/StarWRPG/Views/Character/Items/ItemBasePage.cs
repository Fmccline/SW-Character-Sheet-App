using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Xamarin.Forms;

namespace StarWRPG.Views
{
    public abstract class ItemBasePage : ContentPage
    {
        protected InventoryViewModel inventoryViewModel;
        protected ItemViewModel itemViewModel;

        ToolbarItem save;
        ToolbarItem delete;

        public ItemBasePage(InventoryViewModel inventoryViewModel)
        {
            this.inventoryViewModel = inventoryViewModel;
            AddSaveAndDelete();
        }

        private void AddSaveAndDelete()
        {
            save = new ToolbarItem
            {
                Text = "Save",
            };
            save.Clicked += OnSaveClickedAsync;

            delete = new ToolbarItem
            {
                Text = "Delete",
            };
            delete.Clicked += OnDeleteClickedAsync;

            ToolbarItems.Add(delete);
            ToolbarItems.Add(save);
        }

        private async void OnDeleteClickedAsync(object sender, EventArgs e)
        {
            var answer = await DisplayAlert("Are you sure?", "This will permanently delete the item.", "Yes", "No");
            if (answer)
            {
                inventoryViewModel.Remove(itemViewModel);
                await Navigation.PopAsync();
            }
        }

        protected async void OnSaveClickedAsync(object sender, EventArgs e)
        {
            inventoryViewModel.Insert(itemViewModel);
            await Navigation.PopAsync();
        }
    }
}