using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace StarWRPG.Views
{
    // Intent
    //      Page for displaying character motivations
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MotivationsDetailPage : MotivationPageBase
    {
        protected override StackLayout motivationsLayout { get { return MotivationsLayout; } }
        protected override StackLayout obligationsLayout { get { return ObligationsLayout; } }
        protected override StackLayout dutyLayout { get { return DutyLayout; } }
        protected override StackLayout moralityLayout { get { return MoralityLayout; } }
        protected override StackLayout mainStackLayout { get { return MainStackLayout; } }

        private int numberOfMotivations;

        public MotivationsDetailPage(FFGCharacterViewModel character) : base(character)
        {
            InitializeComponent();
        }

        protected override void OnDisappearing()
        {
            numberOfMotivations = characterMotivationsViewModel.CharacterMotivationViewModels.Count;
        }

        protected override void OnAppearing()
        {
            if (numberOfMotivations != characterMotivationsViewModel.CharacterMotivationViewModels.Count)
            {
                foreach (var motivation in characterMotivationsViewModel.CharacterMotivationViewModels)
                {
                    AddMotivationToAppropriateLayout(motivation);
                }
            }
        }

        protected override MotivationLayout MakeMotivationLayout(CharacterMotivationViewModel motivation)
        {
            return new MotivationDetailLayout(motivation);
        }
    }
}