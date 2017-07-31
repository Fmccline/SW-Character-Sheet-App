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
    // Intent
    //       For displaying a selection of characters from the character database
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class CharacterSelectionLayout : ContentView
    {
        public ListView CharactersListView;
        CharacterListViewModel characterListViewModel;

        public CharacterSelectionLayout()
        {
            InitializeComponent();
            characterListViewModel = new CharacterListViewModel();
            BindingContext = characterListViewModel;

            CharactersListView = charactersListView;
        }

        public async Task RefreshCharactersAsync()
        {
            characterListViewModel.Characters = await characterListViewModel.GetCharactersAsync();
        }
    }
}