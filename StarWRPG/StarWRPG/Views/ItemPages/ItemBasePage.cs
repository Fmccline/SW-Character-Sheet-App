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
        protected Button save;
        protected Button cancel;
        protected StackLayout SaveAndCancelLayout;

        protected abstract void OnSaveClickedAsync(object sender, EventArgs e);
        protected async void OnCancelClickedAsync(object sender, EventArgs e)
        {
            var answer = await DisplayAlert("Are you sure?", "Cancelling will not save the item to your inventory.", "Yes", "No");
            if (answer)
                await Navigation.PopModalAsync();
        }

        public ItemBasePage(InventoryViewModel inventoryViewModel)
        {
            this.inventoryViewModel = inventoryViewModel;
            save = new Button
            {
                Text = "Save",
                HorizontalOptions = LayoutOptions.FillAndExpand,
            };
            save.Clicked += OnSaveClickedAsync;

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
                    cancel,
                }
            };
        }
    }
}