using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;

using Xamarin.Forms;

namespace StarWRPG.Views
{
    public abstract class MotivationPageBase : BasePage
    {
        protected CharacterMotivationsViewModel characterMotivationsViewModel;

        protected abstract StackLayout motivationsLayout { get; }
        protected abstract StackLayout obligationsLayout { get; }
        protected abstract StackLayout dutyLayout { get; }
        protected abstract StackLayout moralityLayout { get; }
        protected abstract MotivationLayout MakeMotivationLayout(CharacterMotivationViewModel motivation);

        public MotivationPageBase(FFGCharacterViewModel character)
        {
            Title = "Motivations";
            characterMotivationsViewModel = character.CharacterMotivationsViewModel;

            BindingContext = character;
        }

        protected void AddMotivationToAppropriateLayout(CharacterMotivationViewModel motivation)
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
            layout.Children.Add(MakeMotivationLayout(motivation));
            layout.IsVisible = true;
        }
    }
}