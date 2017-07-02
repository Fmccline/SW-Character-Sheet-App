using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.ViewModels
{
    public abstract class FFGPresetViewModel : ViewModelBase
    {
        public abstract void SetPreset();
        public abstract void RemovePreset();
    }
}
