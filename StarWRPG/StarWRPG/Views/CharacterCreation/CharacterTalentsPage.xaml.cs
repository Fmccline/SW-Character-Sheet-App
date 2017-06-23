using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace StarWRPG.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class CharacterTalentsPage : ContentPage
    {
        TalentsViewModel talentsViewModel;

        public CharacterTalentsPage(FaDCharacterViewModel fadCharacterViewModel)
        {
            InitializeComponent();

            talentsViewModel = fadCharacterViewModel.TalentsViewModel;
            BindingContext = talentsViewModel;

            MainStackLayout.Children.Insert(0, new CharacterCreationNavigationButtons(fadCharacterViewModel, GetType()));

            AddTalents();
        }

        // TODO: Remove this eventually
        private void AddTalents()
        {
            AddTalent("Sleight of Mind", 94, "Add 1 boost to all stealth checks unless the opposition is immune to Force powers");
            AddTalent("Well Rounded", 94, "Choose any 2 skills. They permanently become career skills.");
            AddTalent("Shroud", 94, "The character may spend 1 Destiny Point to make himself undetectable via Force powers and make his own powers go unnoticed for the remainder of the encounter");
            AddTalent("Defensive Stance", 94, "Once per round, may perform Defensive Stance maneuver and suffer a number of strain to upgrade difficulty of all incoming melee attacks by an equal number for the next round. Strain suffered this way cannot exceed ranks in Defensive Stance.");
            AddTalent("Grit", 94, "Gain +1 to strain threshold.");
        }

        // TODO: Remove this eventually
        private void AddTalent(string name, uint pageNumber, string description)
        {
            talentsViewModel.AddTalent(new TalentViewModel
            {
                Name = name,
                PageNumber = pageNumber,
                Description = description,
            });
        }

        private async void TalentSelectedAsync(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem is TalentViewModel talent)
                await Navigation.PushModalAsync(new TalentPage(talentsViewModel, talent));
            TalentsListView.SelectedItem = null;
        }

        private async void AddTalentClickedAsync(object sender, EventArgs e)
        {
            await Navigation.PushModalAsync(new TalentPage(talentsViewModel));
        }
    }
}