using StarWRPG.Models;
using System;
using System.Collections.Generic;

namespace StarWRPG.ViewModels
{
    public class SpeciePresetsViewModel : ViewModelBase
    {
        public List<SpeciePresetViewModel> SpeciePresetViewModels;
        FFGCharacterViewModel ffgCharacterViewModel;

        public string[] SpeciesNames;

        public SpeciePresetsViewModel(FFGCharacterViewModel character)
        {
            ffgCharacterViewModel = character;
            SpeciePresetViewModels = new List<SpeciePresetViewModel>
            {
                new SpeciePresetViewModel(character, new ZabrakPreset()),
                new SpeciePresetViewModel(character, new TwilekPreset()),
            };
            SetSpeciesNames();
        }

        private void SetSpeciesNames()
        {
            SpeciesNames = new string[SpeciePresetViewModels.Count];
            foreach (var species in SpeciePresetViewModels)
            {
                int index = SpeciePresetViewModels.IndexOf(species);
                SpeciesNames[index] = species.SpecieName;
            }
        }

        public SpeciePresetViewModel GetSpeciesPresetViewModelByName(string speciesName = null)
        {
            if (speciesName == null)
            {
                return SpeciePresetViewModels[0];
            }
            foreach (var species in SpeciePresetViewModels)
            {
                if (species.SpecieName.Equals(speciesName))
                {
                    return species;
                }
            }
            throw new Exception("Couldn't find the name of the species.");
        }

        public void SetSpeciePreset(SpeciePresetViewModel speciePresetViewModel)
        {
            ffgCharacterViewModel.SetSpeciePreset(speciePresetViewModel);
        }
    }
}
