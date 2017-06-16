using StarWRPG.Models;
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
    public partial class CharacterBasicInfoEntryPage : ContentPage
    {
        FaDCharacterViewModel fadCharacterViewModel;

        public CharacterBasicInfoEntryPage(FaDCharacterViewModel characterViewModel)
        {
            InitializeComponent();

            fadCharacterViewModel = characterViewModel;
            BindingContext = fadCharacterViewModel;

            MainStackLayout.Children.Insert(0, new CharacterCreationNavigationButtons(fadCharacterViewModel, GetType()));
        }

        public async void EditDescriptionAsync(object sender, EventArgs e)
        {
            await Navigation.PushModalAsync(new EditorPage("Description", "Description", fadCharacterViewModel));
        }
    }
}