using StarWRPG.Helpers;
using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace StarWRPG.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class CharacterTalentsPage : BasePage
    {
        protected override StackLayout mainStackLayout { get { return MainStackLayout; } }
        TalentsViewModel talentsViewModel;

        public CharacterTalentsPage(FFGCharacterViewModel character) : base(character)
        {
            InitializeComponent();

            talentsViewModel = ffgCharacterViewModel.TalentsViewModel;
            BindingContext = talentsViewModel;

            AddTalentButton.Clicked += new SingleClick(AddTalentClickedAsync).Click;
        }

        // Set XP so that the UI gets updated
        protected override void OnAppearing()
        {
            base.OnAppearing();
            talentsViewModel.AvailableXP = talentsViewModel.AvailableXP;
            talentsViewModel.TotalXP = talentsViewModel.TotalXP;
        }

        private async void TalentSelectedAsync(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem is TalentViewModel talent)
            {
                await Navigation.PushAsync(new TalentPage(talentsViewModel, talent));
                TalentsListView.SelectedItem = null;
            }
        }

        private async void AddTalentClickedAsync(object sender, EventArgs e)
        {
            try
            {
                await Navigation.PushAsync(new TalentPage(talentsViewModel));
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.StackTrace);
                Debug.WriteLine(ex.Message);
            }
        }
    }
}