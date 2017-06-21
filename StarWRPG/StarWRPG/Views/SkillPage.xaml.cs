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
    public partial class SkillPage : ContentPage
    {
        SkillViewModel skillViewModel;

        public SkillPage(SkillViewModel skill)
        {
            InitializeComponent();

            skillViewModel = skill;
            BindingContext = skillViewModel;
        }

        private async void AcceptClickedAsync(object sender, EventArgs e)
        {
            await Navigation.PopModalAsync();
        }

        private async void RankUpClickedAsync(object sender, EventArgs e)
        {
            string message = String.Format("Spend {0} XP to increase rank? \nPressing \"No\" will increase the rank without spending XP.",
                                                skillViewModel.XPToNextRank());

            var answer = await DisplayAlert("Increase Rank", message, "Yes", "No");
            if (answer)
                skillViewModel.IncreaseRankWithXP();
            else
                skillViewModel.IncreaseRank();
        }

        private async void RankDownClickedAsync(object sender, EventArgs e)
        {
            string message = String.Format("Decrease rank and refund {0} XP? \nPressing \"No\" will decrease the rank without refunding XP.",
                                                skillViewModel.XPToPreviousRank());
            var answer = await DisplayAlert("Decrease Rank", message, "Yes", "No");
            if (answer)
                skillViewModel.DecreaseRankWithXP();
            else
                skillViewModel.DecreaseRank();
        }
    }
}