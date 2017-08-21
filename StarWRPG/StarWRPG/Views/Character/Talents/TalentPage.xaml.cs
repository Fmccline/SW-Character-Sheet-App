using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace StarWRPG.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class TalentPage : ContentPage
    {
        TalentsViewModel talentsViewModel;
        TalentViewModel talentViewModel;
        bool talentExists;

        public TalentPage(TalentsViewModel talents, TalentViewModel talent = null)
        {
            InitializeComponent();

            talentsViewModel = talents;

            talentViewModel = talent ?? new TalentViewModel(talents.XP);
            talentExists = (talent != null);
            
            BindingContext = talentViewModel;

            AddSaveAndDelete();
        }

        private void AddSaveAndDelete()
        {
            ToolbarItem saveTalent = new ToolbarItem { Text = "Save" };
            ToolbarItem deleteTalent = new ToolbarItem { Text = "Delete" };

            saveTalent.Clicked += SaveClickedAsync;
            deleteTalent.Clicked += DeleteClickedAsync;

            ToolbarItems.Add(saveTalent);
            ToolbarItems.Add(deleteTalent);
        }

        private async void DeleteClickedAsync(object sender, EventArgs e)
        {
            uint xpCost = talentViewModel.XPCost;
            string message = "Are you sure you want to delete this talent?";
            message = (talentViewModel.UseXP) ? message + $"\nDeleting this talent will refund {xpCost} XP." : message;

            var answer = await DisplayAlert("Delete Talent", message, "Yes", "No");
            if (answer)
            {
                if (talentExists)
                {
                    talentsViewModel.AvailableXP += (talentViewModel.UseXP) ? xpCost : 0;
                    talentsViewModel.RemoveTalent(talentViewModel);
                }
                await Navigation.PopAsync();
            }
        }

        private async void SaveClickedAsync(object sender, EventArgs e)
        {
            if (talentViewModel.Name.Equals("") || talentViewModel.Description.Equals(""))
            {
                await DisplayAlert("Invalid", "Please enter both a name and description for this talent.", "Oops, I'll get to that!");
                return;
            }
            if (!talentExists)
            {
                if (talentViewModel.UseXP)
                {
                    uint xpCost = talentViewModel.XPCost;
                    uint availableXP = talentViewModel.AvailableXP;
                    if (xpCost <= availableXP)
                    {
                        talentsViewModel.AvailableXP -= xpCost;
                    }
                    else
                    {
                        string message = $"This talent costs {xpCost} XP.\nHowever, you only have {availableXP} XP.";
                        await DisplayAlert("Need more experience, you do.", message, "Ok");
                        return;
                    }
                }
                talentsViewModel.AddTalent(talentViewModel);
            }
            await Navigation.PopAsync();
        }
    }
}