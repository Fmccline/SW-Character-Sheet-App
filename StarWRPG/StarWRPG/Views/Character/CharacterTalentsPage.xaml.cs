using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
        TalentsViewModel talentsViewModel;

        protected override StackLayout mainStackLayout { get { return MainStackLayout; } }

        public CharacterTalentsPage(FFGCharacterViewModel ffgCharacterViewModel)
        {
            InitializeComponent();

            talentsViewModel = ffgCharacterViewModel.TalentsViewModel;
            BindingContext = talentsViewModel;
        }

        private async void TalentSelectedAsync(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem is TalentViewModel talent)
            {
                await Navigation.PushModalAsync(new TalentPage(talentsViewModel, talent));
                TalentsListView.SelectedItem = null;
            }
        }

        private async void AddTalentClickedAsync(object sender, EventArgs e)
        {
            await Navigation.PushModalAsync(new TalentPage(talentsViewModel));
        }
    }
}