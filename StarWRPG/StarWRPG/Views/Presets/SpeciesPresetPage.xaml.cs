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
    public partial class SpeciesPresetPage : ContentPage
    {
        SpeciesPresetsViewModel speciesPresetsViewModel;
        SpeciesPresetViewModel speciesPresetViewModel;

        public SpeciesPresetPage(SpeciesPresetsViewModel speciesPresets, string speciesName)
        {
            InitializeComponent();

            speciesPresetsViewModel = speciesPresets;
            speciesPresetViewModel = speciesPresetsViewModel.GetSpeciesPresetViewModelByName(speciesName);

            BindingContextChanged += SetTalentsLayout;
            BindingContext = speciesPresetViewModel;

            AddSaveAndChangeToolbarItems();
        }

        private void AddSaveAndChangeToolbarItems()
        {
            var save = new ToolbarItem { Text = "Save" };
            save.Clicked += SaveClickedAsync;

            var change = new ToolbarItem { Text = "Change" };
            change.Clicked += ChangeSpeciesClickedAsync;

            ToolbarItems.Add(change);
            ToolbarItems.Add(save);
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

        private async void ChangeSpeciesClickedAsync(object sender, EventArgs e)
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