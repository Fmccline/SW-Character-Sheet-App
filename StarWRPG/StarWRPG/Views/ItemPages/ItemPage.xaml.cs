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
    public partial class ItemPage : ItemBasePage
    {
        ItemViewModel itemViewModel;

        public ItemPage(InventoryViewModel inventoryViewModel, ItemViewModel itemViewModel = null) : base(inventoryViewModel)
        {
            InitializeComponent();
            
            if (itemViewModel == null)
            {
                this.itemViewModel = new ItemViewModel();
            }

            BindingContext = this.itemViewModel;

            MainStackLayout.Children.Add(SaveAndCancelLayout);
        }

        protected override async void OnSaveClickedAsync(object sender, EventArgs e)
        {
            inventoryViewModel.Add(itemViewModel.Item);
            await Navigation.PopModalAsync();
        }
    }
}