using StarWRPG.Models;
using System;
using System.Collections.Generic;

namespace StarWRPG.ViewModels
{
    public class SpeciesPresetsViewModel : ViewModelBase
    {
        public List<SpeciesPresetViewModel> SpeciesPresetViewModels;
        FFGCharacterViewModel ffgCharacterViewModel;

        public string[] SpeciesNames { get { return GetSpeciesNames(); } }

        public SpeciesPresetsViewModel(FFGCharacterViewModel character)
        {
            ffgCharacterViewModel = character;
            SpeciesPresetViewModels = new List<SpeciesPresetViewModel>
            {
                new SpeciesPresetViewModel(character, new CereanPreset()),
                new SpeciesPresetViewModel(character, new HumanPreset()),
                new SpeciesPresetViewModel(character, new KelDorPreset()),
                new SpeciesPresetViewModel(character, new MirialanPreset()),
                new SpeciesPresetViewModel(character, new NautolanPreset()),
                new SpeciesPresetViewModel(character, new TogrutaPreset()),
                new SpeciesPresetViewModel(character, new TwilekPreset()),
                new SpeciesPresetViewModel(character, new ZabrakPreset()),
            };
        }

        private string[] GetSpeciesNames()
        {
            string[] speciesNames = new string[SpeciesPresetViewModels.Count];
            foreach (var species in SpeciesPresetViewModels)
            {
                int index = SpeciesPresetViewModels.IndexOf(species);
                speciesNames[index] = species.SpeciesName;
            }
            return speciesNames;
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
