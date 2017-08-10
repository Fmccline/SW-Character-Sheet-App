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
        SkillsViewModel skillsViewModel;

        public SkillPage(SkillViewModel skill, SkillsViewModel skills)
        {
            InitializeComponent();

            skillViewModel = skill;
            skillsViewModel = skills;
            BindingContext = skillViewModel;

            SetIncrementAndDecrementIsEnabled();
            if (skillViewModel.CanDelete)
            {
                AddDeleteToolbarItem();
            }
            if (skillViewModel.SkillUses.Count > 0)
            {
                SkillUsesLabel.IsVisible = true;
                SkillUsesView.Content = new SkillUsesGrid(skillViewModel.SkillUses).Content;
            }
        }

        private void AddDeleteToolbarItem()
        {
            var deleteSkill = new ToolbarItem { Text = "Delete" };
            deleteSkill.Clicked += async (sender, e) =>
            {
                string message = $"Are you sure you want to delete the skill {skillViewModel.SkillName}?";
                var answer = await DisplayAlert("Delete Skill", message, "Yes", "No");
                if (answer)
                {
                    skillsViewModel.RemoveSkill(skillViewModel);
                    await Navigation.PopAsync(false);
                }
            };
            ToolbarItems.Add(deleteSkill);
        }

        private async void ChangeCharacteristicClickedAsync(object sender, EventArgs e)
        {
            string[] CharacteristicNames = { "Agility", "Brawn", "Cunning", "Intellect", "Presence", "Willpower", };
            string characteristicType = await DisplayActionSheet("Characteristic", "Cancel", null, CharacteristicNames);
            if (characteristicType != null && !characteristicType.Equals("Cancel"))
            {
                skillViewModel.ChangeCharacteristic(characteristicType);
            }
        }

        private void DecrementClicked(object sender, EventArgs e)
        {
            if (skillViewModel.Rank > 0)
            {
                if (skillViewModel.UseXP)
                {
                    skillViewModel.RankDownWithXP();
                }
                else
                {
                    skillViewModel.Rank--;
                }
            }
            SetIncrementAndDecrementIsEnabled();
        }

        private async void IncrementClicked(object sender, EventArgs e)
        {
            if (skillViewModel.Rank < skillViewModel.MaxRank)
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
                        uint xpToRank = skillViewModel.XPToRank(rank + 1);
                        uint availableXP = skillViewModel.AvailableXP;
                        string message = $"You need {xpToRank} XP to go from Rank {rank} to Rank {rank + 1}. " +
                                         $"\nHowever, you only have {availableXP} XP.";
                        await DisplayAlert("Need more experience, you do.", message, "Ok");
                    }
                }
                else
                {
                    skillViewModel.Rank++;
                }
            }
            SetIncrementAndDecrementIsEnabled();
        }

        private void SetIncrementAndDecrementIsEnabled()
        {
            DecrementButton.IsEnabled = (skillViewModel.Rank > 0);
            IncrementButton.IsEnabled = (skillViewModel.Rank < skillViewModel.MaxRank);
        }
    }
}