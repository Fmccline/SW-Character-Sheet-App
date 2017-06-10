using StarWRPG.Models;
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
    public partial class FaDInventoryPage : ContentPage
    {
        InventoryViewModel Inventory;

        public FaDInventoryPage(InventoryViewModel inventory)
        {
            InitializeComponent();

            // TODO:
            //      Make ctor take InventoryViewModel instead of Inventory object
            Inventory = inventory;
            BindingContext = Inventory;
        }
    }
}