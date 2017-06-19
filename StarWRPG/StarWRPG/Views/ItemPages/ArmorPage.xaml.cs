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
    public partial class ArmorPage : ItemBasePage
    {
        ArmorViewModel armorViewModel;

        public ArmorPage(InventoryViewModel inventoryViewModel, ArmorViewModel armorViewModel = null) : base(inventoryViewModel)
        {
            InitializeComponent();

            if (armorViewModel == null)
            {
                this.armorViewModel = new ArmorViewModel();
            }

            BindingContext = this.armorViewModel;

            MainStackLayout.Children.Add(SaveAndCancelLayout);
        }

        protected override async void OnSaveClickedAsync(object sender, EventArgs e)
        {
            inventoryViewModel.Add(armorViewModel.Armor);
            await Navigation.PopModalAsync();
        }
    }
}