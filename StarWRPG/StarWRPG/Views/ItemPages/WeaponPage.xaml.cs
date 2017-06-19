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
    public partial class WeaponPage : ItemBasePage
    {
        WeaponViewModel weaponViewModel;

        public WeaponPage(InventoryViewModel inventoryViewModel, WeaponViewModel weaponViewModel = null) : base(inventoryViewModel)
        {
            InitializeComponent();

            if (weaponViewModel == null)
            {
                this.weaponViewModel = new WeaponViewModel();
            }

            BindingContext = this.weaponViewModel;

            MainStackLayout.Children.Add(SaveAndCancelLayout);
        }

        protected override async void OnSaveClickedAsync(object sender, EventArgs e)
        {
            inventoryViewModel.Add(weaponViewModel.Weapon);
            await Navigation.PopModalAsync();
        }
    }
}