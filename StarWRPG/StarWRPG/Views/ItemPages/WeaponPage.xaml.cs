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
        public WeaponPage(InventoryViewModel inventoryViewModel, WeaponViewModel weaponViewModel = null) : base(inventoryViewModel)
        {
            InitializeComponent();

            if (weaponViewModel == null)
            {
                weaponViewModel = new WeaponViewModel();
            }
            itemViewModel = weaponViewModel;
            BindingContext = itemViewModel;

            MainStackLayout.Children.Add(SaveAndCancelLayout);
        }
    }
}