using StarWRPG.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.ViewModels
{
    public class ItemViewModel : ViewModelBase
    {
        public Item Item;
        public string Name
        {
            get { return Item.Name; }
            set
            {
                Item.Name = value;
                OnPropertyChanged();
            }
        }
        public string Description
        {
            get { return Item.Description; }
            set
            {
                Item.Description = value;
                OnPropertyChanged();
            }
        }
        public uint Encumbrance
        {
            get { return Item.Encumbrance; }
            set
            {
                Item.Encumbrance = value;
                OnPropertyChanged();
            }
        }

        public ItemViewModel() : this(new Item()) { }

        public ItemViewModel(Item item)
        {
            Item = item;
        }
    }
}
