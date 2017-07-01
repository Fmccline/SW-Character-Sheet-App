using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using StarWRPG.Models;
using System.Diagnostics;

namespace StarWRPG.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class SpeciePresetPage : ContentPage
    {
        SpeciePresetsViewModel speciePresetsViewModel;
        SpeciePresetViewModel speciePresetViewModel;

        public SpeciePresetPage(SpeciePresetsViewModel speciesPresets, string speciesName)
        {
            InitializeComponent();

            speciePresetsViewModel = speciesPresets;
            speciePresetViewModel = speciePresetsViewModel.GetSpeciesPresetViewModelByName(speciesName);

            BindingContextChanged += SetTalentsLayout;
            BindingContext = speciePresetViewModel;
        }

        private void SetTalentsLayout(object sender, EventArgs e)
        {
            TalentsLayout.Content = new TalentsLayout(speciePresetViewModel.TalentViewModels);
        }

        private async void SelectClickedAsync(object sender, EventArgs e)
        {
            speciePresetsViewModel.SetSpeciePreset(speciePresetViewModel);
            await Navigation.PopModalAsync();
        }

        private async void CancelClickedAsync(object sender, EventArgs e)
        {
            await Navigation.PopModalAsync();
        }

        private async void ChangeSpeciesClickedAsync(object sender, EventArgs e)
        {
            var speciesName = await DisplayActionSheet("Species", "Cancel", null, speciePresetsViewModel.SpeciesNames);
            speciePresetViewModel = speciePresetsViewModel.GetSpeciesPresetViewModelByName(speciesName);
            BindingContext = speciePresetViewModel;
        }
    }
}