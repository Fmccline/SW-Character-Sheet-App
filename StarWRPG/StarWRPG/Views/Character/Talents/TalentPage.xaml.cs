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
            NavigationPage.SetHasBackButton(this, false);

            talentsViewModel = talents;

            if (talent == null)
            {
                talentViewModel = new TalentViewModel();
                talentExists = false;
            }
            else
            {
                talentViewModel = talent;
                talentExists = true;
            }
            
            BindingContext = talentViewModel;

            AddSaveAndDeleteTalentToolbarItems();
        }

        private void AddSaveAndDeleteTalentToolbarItems()
        {
            ToolbarItem saveTalent = new ToolbarItem
            {
                Text = "Save"
            };
            saveTalent.Clicked += SaveClickedAsync;

            ToolbarItem deleteTalent = new ToolbarItem
            {
                Text = "Delete"
            };
            deleteTalent.Clicked += DeleteClickedAsync;

            ToolbarItems.Add(deleteTalent);
            ToolbarItems.Add(saveTalent);
        }

        private async void DeleteClickedAsync(object sender, EventArgs e)
        {
            var answer = await DisplayAlert("Delete Talent", "Are you sure you want to delete this talent?", "Yes", "No");
            if (answer)
            {
                if (talentExists)
                {
                    talentsViewModel.RemoveTalent(talentViewModel);
                }
                await Navigation.PopAsync();
            }
        }

        private async void SaveClickedAsync(object sender, EventArgs e)
        {
            if (talentViewModel.Name.Equals("") || talentViewModel.Description.Equals(""))
            {
                await DisplayAlert("Invalid", "You forgot to enter in the Name and/or Description!", "Oops, I'll get to that!");
            }
            else
            {
                if (!talentExists)
                {
                    talentsViewModel.AddTalent(talentViewModel);
                }
                await Navigation.PopAsync();
            }
        }
    }
}