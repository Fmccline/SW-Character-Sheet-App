using StarWRPG.Models;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace StarWRPG.ViewModels
{
    class ItemViewModel : INotifyPropertyChanged
    {
        public Item Item { get; set; }

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
        public bool IsEquipped
        {
            get { return Item.IsEquipped; }
            set
            {
                Item.IsEquipped = value;
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

        public virtual string Details { get { return Description; } }

        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged([CallerMemberName] string propertyName = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
