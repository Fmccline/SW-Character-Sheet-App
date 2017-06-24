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
    public partial class CharacterSkillsPage : CharacterCreationBasePage
    {
        FaDCharacterViewModel fadCharacterViewModel;

        public CharacterSkillsPage(FaDCharacterViewModel character) : base(character)
        {
            InitializeComponent();

            fadCharacterViewModel = character;
            BindingContext = fadCharacterViewModel;

            MainStackLayout.Children.Insert(0, new CharacterCreationNavigationButtons(fadCharacterViewModel, GetType()));
        }

        private async void SkillSelected(object sender, SelectedItemChangedEventArgs e)
        {
            var skill = e.SelectedItem as SkillViewModel;
            await Navigation.PushModalAsync(new SkillPage(skill));
        }
    }
}