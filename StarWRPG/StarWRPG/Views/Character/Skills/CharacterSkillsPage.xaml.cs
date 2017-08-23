using StarWRPG.Helpers;
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
    //      Page for displaying a character's skill
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class CharacterSkillsPage : BasePage
    {
        protected override StackLayout mainStackLayout { get { return MainStackLayout; } }
        SkillsViewModel skillsViewModel;

        public CharacterSkillsPage(FFGCharacterViewModel character) : base(character)
        {
            InitializeComponent();
            skillsViewModel = character.SkillsViewModel;
            BindingContext = skillsViewModel;

            AddSkillButton.Clicked += new SingleClick(AddCustomSkillClickedAsync).Click;
        }

        // Set XP so that the UI gets updated
        protected override void OnAppearing()
        {
            base.OnAppearing();
            skillsViewModel.AvailableXP = skillsViewModel.AvailableXP;
            skillsViewModel.TotalXP = skillsViewModel.TotalXP;
        }

        private async void SkillSelected(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem is SkillViewModel skill)
            {
                await Navigation.PushAsync(new SkillPage(skill,skillsViewModel));
                SkillsListView.SelectedItem = null;
            }
        }

        private async void AddCustomSkillClickedAsync(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new AddCustomSkillPage(skillsViewModel));
        }
    }
}