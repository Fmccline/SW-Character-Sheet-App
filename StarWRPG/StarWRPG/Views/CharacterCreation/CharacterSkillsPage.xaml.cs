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
    public partial class CharacterSkillsPage : ContentPage
    {
        FaDCharacterViewModel fadCharacterViewModel;

        public CharacterSkillsPage(FaDCharacterViewModel character)
        {
            InitializeComponent();

            fadCharacterViewModel = character;
            BindingContext = fadCharacterViewModel;

            MainStackLayout.Children.Insert(0, new CharacterCreationNavigationButtons(fadCharacterViewModel, GetType()));
        }

        private void SkillSelected(object sender, SelectedItemChangedEventArgs e)
        {
            fadCharacterViewModel.SkillSelected(sender, e);
        }
    }
}