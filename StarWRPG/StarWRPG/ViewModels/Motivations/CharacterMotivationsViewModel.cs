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
        ObservableCollection<CharacterMotivationBase> characterMotivations;
        public ObservableCollection<CharacterMotivationViewModel> CharacterMotivationViewModels;

        public CharacterMotivationsViewModel(ObservableCollection<CharacterMotivationBase> motivations)
        {
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
                    CharacterMotivationViewModels.Add(new ObligationViewModel(motivation));
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
            CharacterMotivationViewModels.Add(motivation);
            characterMotivations.Add(motivation.CharacterMotivation);
        }

        public void RemoveMotivation(CharacterMotivationViewModel motivation)
        {
            CharacterMotivationViewModels.Remove(motivation);
            characterMotivations.Remove(motivation.CharacterMotivation);
        }

    }
}
