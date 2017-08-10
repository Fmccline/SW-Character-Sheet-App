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
        public SpeciesPresetViewModel FFGCharacterSpecies
        {
            get
            {
                if (String.IsNullOrEmpty(ffgCharacterViewModel.Species))
                {
                    return SpeciesPresetViewModels[0];
                }
                else
                {
                    return GetSpeciesPresetViewModelByName(ffgCharacterViewModel.Species);
                }
            }
        }

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

        public SpeciesPresetViewModel GetSpecies(SpeciesPresetViewModel currentSpecies, Func<int, int> returnSpeciesIndexFuntion)
        {
            int returnSpeciesIndex = 0;
            for (int index = 0; index < SpeciesPresetViewModels.Count; ++index)
            {
                if (SpeciesPresetViewModels[index] == currentSpecies)
                {
                    returnSpeciesIndex = returnSpeciesIndexFuntion(index);
                    break;
                }
            }
            return SpeciesPresetViewModels[returnSpeciesIndex];
        }

        public SpeciesPresetViewModel GetPreviousSpecies(SpeciesPresetViewModel currentSpecies)
        {
            Func<int, int> previousSpeciesIndex = (index) =>
            {
                return (index > 0) ? index - 1 : SpeciesPresetViewModels.Count - 1;
            };
            return GetSpecies(currentSpecies, previousSpeciesIndex);
        }

        public SpeciesPresetViewModel GetNextSpecies(SpeciesPresetViewModel currentSpecies)
        {
            Func<int, int> nextSpeciesIndex = (index) =>
            {
                return (index == SpeciesPresetViewModels.Count - 1) ? 0 : index + 1;
            };
            return GetSpecies(currentSpecies, nextSpeciesIndex);
        }
    }
}
