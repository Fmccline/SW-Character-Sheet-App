using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
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

        public MotivationsDetailPage(FFGCharacterViewModel character) : base(character)
        {
            InitializeComponent();

            foreach (var motivation in characterMotivationsViewModel.CharacterMotivationViewModels)
            {
                AddMotivationToAppropriateLayout(motivation);
            }
        }

        protected override void OnAppearing()
        {
            ClearLayouts();
            foreach (var motivation in characterMotivationsViewModel.CharacterMotivationViewModels)
            {
                AddMotivationToAppropriateLayout(motivation);
            }
        }

        private void ClearLayouts()
        {
            motivationsLayout.Children.Clear();
            obligationsLayout.Children.Clear();
            dutyLayout.Children.Clear();
            moralityLayout.Children.Clear();
        }

        protected override MotivationLayout MakeMotivationLayout(CharacterMotivationViewModel motivation)
        {
            return new MotivationDetailLayout(motivation);
        }
    }
}