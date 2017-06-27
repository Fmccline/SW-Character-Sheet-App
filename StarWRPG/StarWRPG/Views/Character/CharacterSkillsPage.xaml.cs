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

        protected override StackLayout mainStackLayout
        {
            get { return MainStackLayout; }
        }

        public CharacterSkillsPage(FaDCharacterViewModel character)
        {
            InitializeComponent();

            skillsViewModel = character.SkillsViewModel;
            BindingContext = skillsViewModel;
        }

        private async void SkillSelected(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem is SkillViewModel skill)
            {
                await Navigation.PushModalAsync(new SkillPage(skill));
                SkillsListView.SelectedItem = null;
            }
        }

        private async void AddCustomSkillClickedAsync(object sender, EventArgs e)
        {
            await Navigation.PushModalAsync(new AddCustomSkillPage(skillsViewModel));
        }

        private void SearchTextChanged(object sender, TextChangedEventArgs e)
        {
            if (Search.Text.Equals(""))
            {
                skillsViewModel.SortSkillsAlphabetically();
                if (Search.IsFocused)
                {
                    Search.Unfocus();
                }
            }
        }
    }
}