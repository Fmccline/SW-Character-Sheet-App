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
        public ItemPage(InventoryViewModel inventoryViewModel, ItemViewModel item = null) : base(inventoryViewModel)
        {
            InitializeComponent();
            
            if (item == null)
            {
                item = new ItemViewModel();
            }
            itemViewModel = item;
            BindingContext = itemViewModel;

            MainStackLayout.Children.Add(SaveAndCancelLayout);
        }
    }
}