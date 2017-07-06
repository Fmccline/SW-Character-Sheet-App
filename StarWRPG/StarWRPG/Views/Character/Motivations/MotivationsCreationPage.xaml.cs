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
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MotivationsCreationPage : MotivationPageBase
    {
        protected override StackLayout mainStackLayout { get { return MainStackLayout; } }
        protected override StackLayout motivationsLayout { get { return MotivationsLayout; } }
        protected override StackLayout obligationsLayout { get { return ObligationsLayout; } }
        protected override StackLayout dutyLayout { get { return DutyLayout; } }
        protected override StackLayout moralityLayout { get { return MoralityLayout; } }

        public MotivationsCreationPage(FFGCharacterViewModel character) : base(character)
        {
            InitializeComponent();

            foreach (var motivation in characterMotivationsViewModel.CharacterMotivationViewModels)
            {
                AddMotivationToAppropriateLayout(motivation);
            }
        }

        protected override MotivationLayout MakeMotivationLayout(CharacterMotivationViewModel motivation)
        {
            return new MotivationCreationLayout(motivation);
        }

        private async void AddMotivationAsync(object sender, EventArgs e)
        {
            List<CharacterMotivationViewModel> allMotivations = ListOfAllMotivations();
            string[] motivationNames = ListOfMotivationNames(allMotivations); 

            var motivationName = await DisplayActionSheet("Add", "Cancel", null, motivationNames);
            foreach (var motivation in allMotivations)
            {
                if (motivation.Name.Equals(motivationName))
                {
                    characterMotivationsViewModel.AddMotivation(motivation);
                    AddMotivationToAppropriateLayout(motivation);
                    return;
                }
            }
        }

        private string[] ListOfMotivationNames(List<CharacterMotivationViewModel> motivations)
        {
            string[] names = new string[motivations.Count];
            for (int i = 0; i < motivations.Count; ++i)
            {
                names[i] = motivations[i].Name;
            }
            return names;
        }

        private List<CharacterMotivationViewModel> ListOfAllMotivations()
        {
            return new List<CharacterMotivationViewModel>()
            {
                new MotivationViewModel(),
                new ObligationViewModel(),
                new DutyViewModel(),
                new EmotionalStrengthsViewModel(),
                new EmotionalWeaknessesViewModel(),
            };
        }
    }
}