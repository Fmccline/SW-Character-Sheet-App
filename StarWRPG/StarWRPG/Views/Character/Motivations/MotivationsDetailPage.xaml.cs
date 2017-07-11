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
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MotivationsDetailPage : MotivationPageBase
    {
        protected override StackLayout mainStackLayout { get { return MainStackLayout; } }
        protected override StackLayout motivationsLayout { get { return MotivationsLayout; } }
        protected override StackLayout obligationsLayout { get { return ObligationsLayout; } }
        protected override StackLayout dutyLayout { get { return DutyLayout; } }
        protected override StackLayout moralityLayout { get { return MoralityLayout; } }

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
            motivationsLayout.Children.Clear();
            obligationsLayout.Children.Clear();
            dutyLayout.Children.Clear();
            moralityLayout.Children.Clear();
            foreach (var motivation in characterMotivationsViewModel.CharacterMotivationViewModels)
            {
                AddMotivationToAppropriateLayout(motivation);
            }
        }

        protected override MotivationLayout MakeMotivationLayout(CharacterMotivationViewModel motivation)
        {
            return new MotivationDetailLayout(motivation);
        }
    }
}