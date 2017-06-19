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
    public partial class CharacterStatsEntryPage : ContentPage
    {
        FaDCharacterViewModel fadCharacterViewModel;

        public CharacterStatsEntryPage(FaDCharacterViewModel characterViewModel)
        {
            InitializeComponent();

            fadCharacterViewModel = characterViewModel;
            BindingContext = fadCharacterViewModel;

            MainStackLayout.Children.Insert(0, new CharacterCreationNavigationButtons(fadCharacterViewModel, GetType()));
        }

        public void SkillSelected(object sender, SelectedItemChangedEventArgs e)
        {
            fadCharacterViewModel.SkillSelected(sender, e);
        }
    }
}