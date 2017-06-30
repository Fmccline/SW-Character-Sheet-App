using StarWRPG.Models;
using System.Collections.Generic;

namespace StarWRPG.ViewModels
{
    public class SpeciePresetsViewModel : ViewModelBase
    {
        public List<SpeciePresetViewModel> SpeciePresetViewModels;

        public SpeciePresetsViewModel(FFGCharacterViewModel character)
        {
            SpeciePresetViewModels = new List<SpeciePresetViewModel>
            {
                new SpeciePresetViewModel(character, new ZabrakPreset()),
            };
        }
    }
}
