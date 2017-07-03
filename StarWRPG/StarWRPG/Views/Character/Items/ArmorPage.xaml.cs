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
        public ArmorPage(InventoryViewModel inventoryViewModel, ArmorViewModel armorViewModel = null) : base(inventoryViewModel)
        {
            InitializeComponent();

            if (armorViewModel == null)
            {
                armorViewModel = new ArmorViewModel();
            }
            itemViewModel = armorViewModel;
            BindingContext = itemViewModel;

            MainStackLayout.Children.Add(SaveAndCancelLayout);
        }
    }
}