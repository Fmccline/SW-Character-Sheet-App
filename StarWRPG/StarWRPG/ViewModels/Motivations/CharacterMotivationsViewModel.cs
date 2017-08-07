using StarWRPG.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.ViewModels
{
    public class CharacterMotivationsViewModel : ViewModelBase
    {
        FFGCharacterViewModel ffgCharacterViewModel;
        bool motivationsIsVisible;
        bool obligationsIsVisible;
        bool dutyIsVisible;
        bool moralityIsVisible;
        ObservableCollection<CharacterMotivationBase> characterMotivations;

        public bool MotivationsIsVisible
        {
            get { return motivationsIsVisible; }
            set
            {
                motivationsIsVisible = value;
                OnPropertyChanged();
            }
        }
        public bool ObligationsIsVisible
        {
            get { return obligationsIsVisible; }
            set
            {
                obligationsIsVisible = value;
                OnPropertyChanged();
            }
        }
        public bool DutyIsVisible
        {
            get { return dutyIsVisible; }
            set
            {
                dutyIsVisible = value;
                OnPropertyChanged();
            }
        }
        public bool MoralityIsVisible
        {
            get { return moralityIsVisible; }
            set
            {
                moralityIsVisible = value;
                OnPropertyChanged();
            }
        }
        public ObservableCollection<CharacterMotivationViewModel> CharacterMotivationViewModels;

        public CharacterMotivationsViewModel(ObservableCollection<CharacterMotivationBase> motivations, FFGCharacterViewModel character)
        {
            ffgCharacterViewModel = character;
            characterMotivations = motivations;
            CharacterMotivationViewModels = new ObservableCollection<CharacterMotivationViewModel>();
            CharacterMotivationViewModels.CollectionChanged += MotivationsCollectionChanged;
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

        private void MotivationsCollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (var newItem in e.NewItems)
                {
                    if (newItem is CharacterMotivationViewModel motivation)
                    {
                        var motivationType = motivation.GetType();
                        SetMotivationVisibilty(motivationType, true);
                    }
                }
            }
            else if (e.OldItems != null)
            {
                foreach (var oldItem in e.OldItems)
                {
                    if (oldItem is CharacterMotivationViewModel motivation)
                    {
                        var motivationType = motivation.GetType();
                        var isVisible = IsMotivationInCharacterMotivationViewModels(motivationType);
                        SetMotivationVisibilty(motivationType, isVisible);
                    }
                }
            }
        }

        private bool IsMotivationInCharacterMotivationViewModels(Type motivationViewModelType)
        {
            foreach (var motivation in CharacterMotivationViewModels)
            {
                if (motivation.GetType() == motivationViewModelType)
                {
                    return true;
                }
            }
            return false;
        }

        private void SetMotivationVisibilty(Type motivationType, bool isVisible)
        {
            if (motivationType == typeof(MotivationViewModel))
            {
                MotivationsIsVisible = isVisible;
            }
            else if (motivationType == typeof(ObligationViewModel))
            {
                ObligationsIsVisible = isVisible;
            }
            else if (motivationType == typeof(DutyViewModel))
            {
                DutyIsVisible = isVisible;
            }
            else // Emotional strength or weakness
            {
                MoralityIsVisible = isVisible;
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
