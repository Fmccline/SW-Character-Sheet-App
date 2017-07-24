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
    public partial class CharacterSkillsPage : BasePage
    {
        SkillsViewModel skillsViewModel;

        public CharacterSkillsPage(FFGCharacterViewModel character) : base(character)
        {
            InitializeComponent();
            skillsViewModel = character.SkillsViewModel;
            BindingContext = skillsViewModel;
        }

        private async void SkillSelected(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem is SkillViewModel skill)
            {
                await Navigation.PushAsync(new SkillPage(skill));
                SkillsListView.SelectedItem = null;
            }
        }

        private async void AddCustomSkillClickedAsync(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new AddCustomSkillPage(skillsViewModel));
        }
    }
}