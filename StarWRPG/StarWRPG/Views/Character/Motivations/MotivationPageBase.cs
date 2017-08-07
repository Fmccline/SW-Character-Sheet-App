using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Diagnostics;
using System.Linq;
using System.Text;

using Xamarin.Forms;

namespace StarWRPG.Views
{
    // Intent
    //      Base page for interacting with character motivations
    public abstract class MotivationPageBase : BasePage
    {
        protected CharacterMotivationsViewModel characterMotivationsViewModel;

        protected abstract StackLayout motivationsLayout { get; }
        protected abstract StackLayout obligationsLayout { get; }
        protected abstract StackLayout dutyLayout { get; }
        protected abstract StackLayout moralityLayout { get; }
        protected abstract MotivationLayout MakeMotivationLayout(CharacterMotivationViewModel motivation);

        public MotivationPageBase(FFGCharacterViewModel character) : base(character)
        {
            Title = "Motivations";
            characterMotivationsViewModel = character.CharacterMotivationsViewModel;
            BindingContext = character;

            Style = (Style)Application.Current.Resources["PageStyle"];

            characterMotivationsViewModel.CharacterMotivationViewModels.CollectionChanged += MotivationsCollectionChanged;
        }

        private void MotivationsCollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (var newItem in e.NewItems)
                {
                    if (newItem is CharacterMotivationViewModel motivation)
                    {
                        AddMotivationToAppropriateLayout(motivation);
                    }
                }
            }
            if (e.OldItems != null)
            {
                foreach (var oldItem in e.OldItems)
                {
                    if (oldItem is CharacterMotivationViewModel motivation)
                    {
                        RemoveMotivationFromAppropriateLayout(motivation);
                    }
                }
            }
        }

        protected void AddMotivationToAppropriateLayout(CharacterMotivationViewModel motivation)
        {
            var layout = GetMotivationLayout(motivation);
            var motivationLayout = MakeMotivationLayout(motivation);

            layout.Children.Add(motivationLayout);
        }

        protected void RemoveMotivationFromAppropriateLayout(CharacterMotivationViewModel motivation)
        {
            var layout = GetMotivationLayout(motivation);
            foreach (var view in layout.Children)
            {
                if (view is MotivationLayout motivationLayout)
                {
                    if (motivationLayout.MotivationName.Equals(motivation.Name) &&
                        motivationLayout.MotivationDescription.Equals(motivation.Description))
                    {
                        layout.Children.Remove(view);
                        return;
                    }
                }
            }
        }

        protected StackLayout GetMotivationLayout(CharacterMotivationViewModel motivation)
        {
            StackLayout layout;
            if (motivation.GetType() == typeof(MotivationViewModel))
            {
                layout = motivationsLayout;
            }
            else if (motivation.GetType() == typeof(ObligationViewModel))
            {
                layout = obligationsLayout;
            }
            else if (motivation.GetType() == typeof(DutyViewModel))
            {
                layout = dutyLayout;
            }
            else // Emotional Strength or Weakness
            {
                layout = moralityLayout;
            }
            return layout;
        }
    }
}