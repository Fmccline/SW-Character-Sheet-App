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
            try
            {
                InitializeComponent();
                skillsViewModel = character.SkillsViewModel;
                BindingContext = skillsViewModel;
            }
            catch(Exception e)
            {
                Debug.WriteLine(e.StackTrace);
                Debug.WriteLine(e.Source);
                Debug.WriteLine(e.Message);
            }
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