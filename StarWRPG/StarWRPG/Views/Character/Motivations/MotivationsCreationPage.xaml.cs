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
    public partial class MotivationsCreationPage : BasePage
    {
        CharacterMotivationsViewModel characterMotivationsViewModel;

        protected override StackLayout mainStackLayout
        {
            get { return MainStackLayout; }
        }

        public MotivationsCreationPage(FFGCharacterViewModel character)
        {
            InitializeComponent();

            characterMotivationsViewModel = character.CharacterMotivationsViewModel;

            foreach (var motivation in characterMotivationsViewModel.CharacterMotivationViewModels)
            {
                AddMotivationToAppropriateLayout(motivation);
            }
        }

        private void AddMotivationToAppropriateLayout(CharacterMotivationViewModel motivation)
        {
            StackLayout layout = MainStackLayout;
            if (motivation.GetType() == typeof(MotivationViewModel))
            {
                layout = MotivationsLayout;
            }
            else if (motivation.GetType() == typeof(ObligationViewModel))
            {
                layout = ObligationsLayout;
            }
            else if (motivation.GetType() == typeof(DutyViewModel))
            {
                layout = DutyLayout;
            }
            else // Emotional Strength or Weakness
            {
                layout = MoralityLayout;
            }
            layout.Children.Add(new MotivationLayout(motivation));
            layout.IsVisible = true;
        }

        private async void AddMotivationAsync(object sender, EventArgs e)
        {
            List<CharacterMotivationViewModel> motivations = ListOfAllMotivations();
            string[] motivationNames = ListOfMotivationNames(motivations); 

            var motivationName = await DisplayActionSheet("Add Motivation", "Cancel", null, motivationNames);
            foreach (var motivation in motivations)
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