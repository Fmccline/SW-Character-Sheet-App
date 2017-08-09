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
using StarWRPG.Helpers;

namespace StarWRPG.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class SpeciesPresetPage : ContentPage
    {
        SpeciesPresetsViewModel speciesPresetsViewModel;
        SpeciesPresetViewModel speciesPresetViewModel;

        public SpeciesPresetPage(SpeciesPresetsViewModel speciesPresets)
        {
            InitializeComponent();

            speciesPresetsViewModel = speciesPresets;
            speciesPresetViewModel = speciesPresetsViewModel.FFGCharacterSpecies;

            BindingContextChanged += SetTalentsLayout;
            BindingContext = speciesPresetViewModel;

            AddSaveToolbarItem();
            SetButtonClicks();
        }

        private void AddSaveToolbarItem()
        {
            var save = new ToolbarItem { Text = "Save" };
            save.Clicked += SaveClickedAsync;
            ToolbarItems.Add(save);
        }

        private void SetButtonClicks()
        {
            PreviousSpeciesButton.Clicked += new SingleClick((sender, e) =>
            {
                speciesPresetViewModel = speciesPresetsViewModel.GetPreviousSpecies(speciesPresetViewModel);
                BindingContext = speciesPresetViewModel;
            }).Click;

            NextSpeciesButton.Clicked += new SingleClick((sender, e) =>
            {
                speciesPresetViewModel = speciesPresetsViewModel.GetNextSpecies(speciesPresetViewModel);
                BindingContext = speciesPresetViewModel;
            }).Click;

            SelectSpeciesButton.Clicked += new SingleClick(SelectSpeciesClickedAsync).Click;
        }

        private void SetTalentsLayout(object sender, EventArgs e)
        {
            TalentsLayout.Content = new TalentsLayout(speciesPresetViewModel.TalentViewModels);
        }

        private async void SaveClickedAsync(object sender, EventArgs e)
        {
            speciesPresetsViewModel.SetSpeciesPreset(speciesPresetViewModel);
            await Navigation.PopAsync();
        }

        private async void SelectSpeciesClickedAsync(object sender, EventArgs e)
        {
            var speciesName = await DisplayActionSheet("Species", "Cancel", null, speciesPresetsViewModel.SpeciesNames);
            if (speciesName != null && !speciesName.Equals("Cancel"))
            {
                speciesPresetViewModel = speciesPresetsViewModel.GetSpeciesPresetViewModelByName(speciesName);
                BindingContext = speciesPresetViewModel;
            }
        }
    }
}