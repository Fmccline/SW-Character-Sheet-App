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

        Button save;
        Button delete;
        Button cancel;
        protected StackLayout SaveAndCancelLayout;

        public ItemBasePage(InventoryViewModel inventoryViewModel)
        {
            this.inventoryViewModel = inventoryViewModel;
            CreateSaveAndCancelLayout();
        }

        private void CreateSaveAndCancelLayout()
        {
            save = new Button
            {
                Text = "Save",
                HorizontalOptions = LayoutOptions.FillAndExpand,
            };
            save.Clicked += OnSaveClickedAsync;

            delete = new Button
            {
                Text = "Delete",
                HorizontalOptions = LayoutOptions.FillAndExpand,
            };
            delete.Clicked += OnDeleteClickedAsync;

            cancel = new Button
            {
                Text = "Cancel",
                HorizontalOptions = LayoutOptions.FillAndExpand,
            };
            cancel.Clicked += OnCancelClickedAsync;

            SaveAndCancelLayout = new StackLayout
            {
                Orientation = StackOrientation.Horizontal,
                Children =
                {
                    save,
                    delete,
                    cancel,
                }
            };
        }

        private async void OnDeleteClickedAsync(object sender, EventArgs e)
        {
            var answer = await DisplayAlert("Are you sure?", "This will permanently delete the item.", "Yes", "No");
            if (answer)
            {
                inventoryViewModel.Remove(itemViewModel);
                await Navigation.PopModalAsync();
            }
        }

        protected async void OnSaveClickedAsync(object sender, EventArgs e)
        {
            inventoryViewModel.Insert(itemViewModel);
            await Navigation.PopModalAsync();
        }

        protected async void OnCancelClickedAsync(object sender, EventArgs e)
        {
            var answer = await DisplayAlert("Are you sure?", "Cancelling will not save the item.", "Yes", "No");
            if (answer)
                await Navigation.PopModalAsync();
        }
    }
}