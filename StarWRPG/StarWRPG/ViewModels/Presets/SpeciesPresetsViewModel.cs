using StarWRPG.Models;
using System;
using System.Collections.Generic;

namespace StarWRPG.ViewModels
{
    public class SpeciesPresetsViewModel : ViewModelBase
    {
        public List<SpeciesPresetViewModel> SpeciesPresetViewModels;
        FFGCharacterViewModel ffgCharacterViewModel;

        public string[] SpeciesNames;

        public SpeciesPresetsViewModel(FFGCharacterViewModel character)
        {
            ffgCharacterViewModel = character;
            SpeciesPresetViewModels = new List<SpeciesPresetViewModel>
            {
                new SpeciesPresetViewModel(character, new ZabrakPreset()),
                new SpeciesPresetViewModel(character, new TwilekPreset()),
            };
            SetSpeciesNames();
        }

        private void SetSpeciesNames()
        {
            SpeciesNames = new string[SpeciesPresetViewModels.Count];
            foreach (var species in SpeciesPresetViewModels)
            {
                int index = SpeciesPresetViewModels.IndexOf(species);
                SpeciesNames[index] = species.SpeciesName;
            }
        }

        public SpeciesPresetViewModel GetSpeciesPresetViewModelByName(string speciesName = null)
        {
            foreach (var species in SpeciesPresetViewModels)
            {
                if (species.SpeciesName.Equals(speciesName))
                {
                    return species;
                }
            }
            throw new Exception("Couldn't find the name of the species.");
        }

        public void SetSpeciesPreset(SpeciesPresetViewModel speciesPresetViewModel)
        {
            ffgCharacterViewModel.SetSpeciesPreset(speciesPresetViewModel);
        }
    }
}
