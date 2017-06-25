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
    public partial class CharacterSkillsPage : BasePage
    {
        FaDCharacterViewModel fadCharacterViewModel;

        protected override StackLayout mainStackLayout
        {
            get { return MainStackLayout; }
        }

        public CharacterSkillsPage(FaDCharacterViewModel character)
        {
            InitializeComponent();

            fadCharacterViewModel = character;
            BindingContext = fadCharacterViewModel;
        }

        private async void SkillSelected(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem is SkillViewModel skill)
            {
                await Navigation.PushModalAsync(new SkillPage(skill));
                SkillsListView.SelectedItem = null;
            }
        }
    }
}