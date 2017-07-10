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
    public partial class InfoCreationPage : BasePage
    {
        FFGCharacterViewModel ffgCharacterViewModel;

        protected override StackLayout mainStackLayout
        {
            get { return MainStackLayout; }
        }

        public InfoCreationPage(FFGCharacterViewModel characterViewModel)
        {
            InitializeComponent();

            ffgCharacterViewModel = characterViewModel;
            BindingContext = ffgCharacterViewModel;

            ScrollViewStackLayout.Children.Add(new CriticalInjuriesLayout(ffgCharacterViewModel.CriticalInjuriesViewModel));
        }

        public async void EditBackgroundAsync(object sender, EventArgs e)
        {
            await Navigation.PushModalAsync(new EditorPage("Character Background", "Background", ffgCharacterViewModel));
        }

        private async void ChangeSpeciePresetAsync(object sender, EventArgs e)
        {
            string cancel = "Cancel";
            var speciePresetsViewModel = new SpeciesPresetsViewModel(ffgCharacterViewModel);
            var speciesName = await DisplayActionSheet("Species", cancel, null, speciePresetsViewModel.SpeciesNames);
            if (!speciesName.Equals(cancel))
                await Navigation.PushModalAsync(new SpeciesPresetPage(speciePresetsViewModel,speciesName));
        }
    }
}