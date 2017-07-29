using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace StarWRPG.Controls
{
    // Intent
    //      Interface for ViewModels to implement so they a search bar can be used with it
    public interface ISearchable
    {
        ICommand SearchCommand { get; }
        ICommand DefaultSortCommand { get; }

        void DefaultSort();
        void Search(string searchText);
    }
}
