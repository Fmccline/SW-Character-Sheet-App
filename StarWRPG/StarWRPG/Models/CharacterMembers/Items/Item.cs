using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Models
{
    /// Invariants:
    ///     IsEquipped and Encumbrance are initialized
    public class Item : INotifyPropertyChanged
    {
        string name { get; set; }
        string description { get; set; }
        bool isEquipped { get; set; }
        uint encumbrance { get; set; }

        public string Name
        {
            get { return name; }
            set
            {
                name = value;
                OnPropertyChanged();
            }
        }
        public string Description
        {
            get { return description; }
            set
            {
                description = value;
                OnPropertyChanged();
            }
        }
        public bool IsEquipped
        {
            get { return isEquipped; }
            set
            {
                isEquipped = value;
                OnPropertyChanged();
            }
        }
        public uint Encumbrance
        {
            get { return encumbrance; }
            set
            {
                encumbrance = value;
                OnPropertyChanged();
            }
        }

        public Item()
        {
            IsEquipped = false;
            Encumbrance = 0;
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged([CallerMemberName] string propertyName = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
