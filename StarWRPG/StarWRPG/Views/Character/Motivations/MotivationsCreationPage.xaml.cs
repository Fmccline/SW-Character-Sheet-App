using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace StarWRPG.Views
{
    // Intent
    //      Page for creating motivations
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MotivationsCreationPage : MotivationPageBase
    {
        protected override StackLayout motivationsLayout { get { return MotivationsLayout; } }
        protected override StackLayout obligationsLayout { get { return ObligationsLayout; } }
        protected override StackLayout dutyLayout { get { return DutyLayout; } }
        protected override StackLayout moralityLayout { get { return MoralityLayout; } }
        protected override StackLayout mainStackLayout { get { return MainStackLayout; } }

        List<CharacterMotivationViewModel> allMotivations;
        string[] motivationNames;

        public MotivationsCreationPage(FFGCharacterViewModel character) : base(character)
        {
            InitializeComponent();

            allMotivations = ListOfAllMotivations();
            motivationNames = ListOfMotivationNames(allMotivations);

            foreach (var motivation in characterMotivationsViewModel.CharacterMotivationViewModels)
            {
                AddMotivationToAppropriateLayout(motivation);
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

        protected override MotivationLayout MakeMotivationLayout(CharacterMotivationViewModel motivation)
        {
            return new MotivationCreationLayout(motivation);
        }

        private async void AddMotivationAsync(object sender, EventArgs e)
        {
            var motivationName = await DisplayActionSheet("Add", "Cancel", null, motivationNames);
            foreach (var motivation in allMotivations)
            {
                if (motivation.Name.Equals(motivationName))
                {
                    characterMotivationsViewModel.AddMotivation(motivation);
                    return;
                }
            }
        }

        private async void RemoveMotivationAsync(object sender, EventArgs e)
        {
            var motivations = characterMotivationsViewModel.CharacterMotivationViewModels;
            List<string> motivationsToStrings = new List<string>();

            foreach (var motivation in motivations)
            {
                string motivationName = motivation.Name;
                string motivationType = motivation.Type;

                motivationsToStrings.Add(motivationName + ": " + motivationType);
            }
            
            var answer = await DisplayActionSheet("Remove Motivation", "Cancel", null, motivationsToStrings.ToArray());
            if (answer != null && !answer.Equals("Cancel"))
            {
                var index = motivationsToStrings.IndexOf(answer);
                var motivationToBeRemoved = motivations[index];
                characterMotivationsViewModel.RemoveMotivation(motivationToBeRemoved);
            }
        }
    }
}