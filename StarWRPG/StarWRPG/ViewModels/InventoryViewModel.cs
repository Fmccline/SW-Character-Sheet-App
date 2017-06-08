using StarWRPG.Models;
using System.Collections.ObjectModel;


namespace StarWRPG.ViewModels
{
    class InventoryViewModel
    {
        public ObservableCollection<Item> Inventory { get; set; }
    }
}
