using StarWRPG.Controls;
using StarWRPG.Models;
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
    public partial class CharacterInfoCreationPage : BasePage
    {
        FFGCharacterViewModel ffgCharacterViewModel;

        protected override StackLayout mainStackLayout
        {
            get { return MainStackLayout; }
        }

        public CharacterInfoCreationPage(FFGCharacterViewModel characterViewModel)
        {
            InitializeComponent();

            ffgCharacterViewModel = characterViewModel;
            BindingContext = ffgCharacterViewModel;

            ScrollViewStackLayout.Children.Add(new CriticalInjuriesLayout(ffgCharacterViewModel.CriticalInjuriesViewModel));
            ToolbarItems.Add(new SaveCharacterToolbarItem(ffgCharacterViewModel, this));
        }

        public async void EditValueAsync(object sender, EventArgs e)
        {
            var buttonClicked = sender as Button;
            if (buttonClicked == EditBackgroundButton)
                await Navigation.PushModalAsync(new EditorPage("Character Background", "Background", ffgCharacterViewModel));
            else if (buttonClicked == EditDescriptionButton)
                await Navigation.PushModalAsync(new EditorPage("Character Description", "Description", ffgCharacterViewModel));
            else if (buttonClicked == EditMotivationsButton)
                await Navigation.PushModalAsync(new EditorPage("Character Motivations", "Motivation", ffgCharacterViewModel));
        }

        private async void ChangeSpeciePresetAsync(object sender, EventArgs e)
        {
            var speciePresetsViewModel = new SpeciesPresetsViewModel(ffgCharacterViewModel);
            var speciesName = await DisplayActionSheet("Species", "Cancel", null, speciePresetsViewModel.SpeciesNames);

            await Navigation.PushModalAsync(new SpeciesPresetPage(speciePresetsViewModel,speciesName));
        }
    }
}