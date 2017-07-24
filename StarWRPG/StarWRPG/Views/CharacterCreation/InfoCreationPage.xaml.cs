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
        public InfoCreationPage(FFGCharacterViewModel character) : base(character)
        {
            InitializeComponent();

            BindingContext = ffgCharacterViewModel;
        }

        private async void ChangeSpeciePresetAsync(object sender, EventArgs e)
        {
            string cancel = "Cancel";
            var speciePresetsViewModel = new SpeciesPresetsViewModel(ffgCharacterViewModel);
            var speciesName = await DisplayActionSheet("Species", cancel, null, speciePresetsViewModel.SpeciesNames);
            if (speciesName != null && !speciesName.Equals(cancel))
                await Navigation.PushAsync(new SpeciesPresetPage(speciePresetsViewModel,speciesName));
        }
    }
}