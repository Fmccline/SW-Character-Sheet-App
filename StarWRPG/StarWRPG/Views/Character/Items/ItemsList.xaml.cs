﻿using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace StarWRPG.Views
{
    // Intent
    //      Displays a list of items
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class ItemsList : ContentView
	{
        InventoryViewModel inventoryViewModel;

        public ItemsList(InventoryViewModel inventory)
        {
            InitializeComponent();

            inventoryViewModel = inventory;
            BindingContext = inventory;
        }

        private async void ItemSelectedAsync(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem is ItemViewModel item)
            {
                await Navigation.PushAsync(new ItemPage(inventoryViewModel, item));
                ItemsListView.SelectedItem = null;
            }
        }
    }
}