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
    //      Page for displaying and editing a specific skill
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class SkillPage : ContentPage
    {
        SkillViewModel skillViewModel;

        public SkillPage(SkillViewModel skill)
        {
            InitializeComponent();

            skillViewModel = skill;
            BindingContext = skillViewModel;

            AddSaveSkillToolbarItem();
        }

        private void AddSaveSkillToolbarItem()
        {
            ToolbarItem saveSkill = new ToolbarItem
            {
                Text = "Save"
            };
            saveSkill.Clicked += SaveClickedAsync;
            ToolbarItems.Add(saveSkill);
        }

        private async void SaveClickedAsync(object sender, EventArgs e)
        {
            await Navigation.PopAsync();
        }

        private async void ChangeCharacteristicClickedAsync(object sender, EventArgs e)
        {
            const string AGILITY = "Agility";
            const string BRAWN = "Brawn";
            const string CUNNING = "Cunning";
            const string INTELLECT = "Intellect";
            const string PRESENCE = "Presence";
            const string WILLPOWER = "Willpower";
            string characteristicType = await DisplayActionSheet("Characteristic", "Cancel", null, AGILITY, BRAWN, CUNNING, INTELLECT, PRESENCE, WILLPOWER);
            if (characteristicType != null && !characteristicType.Equals("Cancel"))
                skillViewModel.ChangeCharacteristic(characteristicType);
        }

        private void DecrementClicked(object sender, EventArgs e)
        {
            if (skillViewModel.UseXP)
            {
                skillViewModel.RankDownWithXP();
            }
            else
            {
                skillViewModel.Rank--;
            }
            IncrementButton.IsEnabled = true;
            DecrementButton.IsEnabled = (skillViewModel.Rank != 0);
        }

        private async void IncrementClicked(object sender, EventArgs e)
        {
            if (skillViewModel.UseXP)
            {
                if (skillViewModel.CanRankUp())
                {
                    skillViewModel.RankUpWithXP();
                }
                else
                {
                    uint rank = skillViewModel.Rank;
                    string message = String.Format("You need {0} XP to go from Rank {1} to Rank {2}. \nHowever, you only have {3} XP.",
                                                    skillViewModel.XPToRank(rank + 1), rank, rank + 1, skillViewModel.AvailableXP);
                    await DisplayAlert("Not enough XP", message, "Ok");
                }
            }
            else
            {
                skillViewModel.Rank++;
            }
            IncrementButton.IsEnabled = (skillViewModel.Rank != skillViewModel.MaxRank);
            DecrementButton.IsEnabled = true;
        }
    }
}