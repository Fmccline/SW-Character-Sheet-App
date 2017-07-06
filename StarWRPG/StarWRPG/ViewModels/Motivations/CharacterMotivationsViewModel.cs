using StarWRPG.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.ViewModels
{
    public class CharacterMotivationsViewModel : ViewModelBase
    {
        FFGCharacterViewModel ffgCharacterViewModel;
        ObservableCollection<CharacterMotivationBase> characterMotivations;
        public ObservableCollection<CharacterMotivationViewModel> CharacterMotivationViewModels;

        public CharacterMotivationsViewModel(ObservableCollection<CharacterMotivationBase> motivations, FFGCharacterViewModel character)
        {
            ffgCharacterViewModel = character;
            characterMotivations = motivations;
            CharacterMotivationViewModels = new ObservableCollection<CharacterMotivationViewModel>();
            foreach (var motivation in characterMotivations)
            {
                if (motivation.GetType() == typeof(CharacterMotivation))
                {
                    CharacterMotivationViewModels.Add(new MotivationViewModel(motivation));
                }
                else if (motivation.GetType() == typeof(CharacterObligation))
                {
                    var motivationViewModel = new ObligationViewModel(motivation);
                    motivationViewModel.PropertyChanged += ObligationViewModelPropertyChanged;
                    CharacterMotivationViewModels.Add(motivationViewModel);
                }
                else if (motivation.GetType() == typeof(CharacterDuty))
                {
                    CharacterMotivationViewModels.Add(new DutyViewModel(motivation));
                }
                else if (motivation.GetType() == typeof(CharacterEmotionalStrengths))
                {
                    CharacterMotivationViewModels.Add(new EmotionalStrengthsViewModel(motivation));
                }
                else if (motivation.GetType() == typeof(CharacterEmotionalWeaknesses))
                {
                    CharacterMotivationViewModels.Add(new EmotionalWeaknessesViewModel(motivation));
                }
            }
        }

        public void AddMotivation(CharacterMotivationViewModel motivation)
        {
            if (motivation.GetType() == typeof(ObligationViewModel))
            {
                motivation.PropertyChanged += ObligationViewModelPropertyChanged;
            }
            CharacterMotivationViewModels.Add(motivation);
            characterMotivations.Add(motivation.CharacterMotivation);
        }

        public void RemoveMotivation(CharacterMotivationViewModel motivation)
        {
            if (motivation.GetType() == typeof(ObligationViewModel))
            {
                motivation.PropertyChanged -= ObligationViewModelPropertyChanged;
            }
            CharacterMotivationViewModels.Remove(motivation);
            characterMotivations.Remove(motivation.CharacterMotivation);
        }

        private void ObligationViewModelPropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            if (e.PropertyName == nameof(ObligationViewModel.Value))
            {
                ffgCharacterViewModel.TotalObligation = CalculateTotalObligation();
            }
        }

        private uint CalculateTotalObligation()
        {
            uint total = 0;
            foreach (var motivation in CharacterMotivationViewModels)
            {
                if (motivation.GetType() == typeof(ObligationViewModel))
                {
                    total += motivation.Value;
                }
            }
            return total;
        }

    }
}
