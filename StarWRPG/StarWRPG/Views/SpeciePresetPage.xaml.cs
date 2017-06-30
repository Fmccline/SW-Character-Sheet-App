﻿using StarWRPG.ViewModels;
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
        FFGCharacterViewModel ffgCharacterViewModel;
        SpeciePresetsViewModel speciePresetsViewModel;

        SpeciePresetViewModel speciePresetViewModel;

        public SpeciePresetPage(FFGCharacterViewModel character)
        {
            InitializeComponent();

            ffgCharacterViewModel = character;
            speciePresetsViewModel = new SpeciePresetsViewModel(ffgCharacterViewModel);
            speciePresetViewModel = speciePresetsViewModel.SpeciePresetViewModels.First();

            BindingContextChanged += SetTalentsLayout;
            BindingContext = speciePresetViewModel;

        }

        private void SetTalentsLayout(object sender, EventArgs e)
        {
            TalentsLayout.Children.Clear();
            TalentsLayout.Children.Add(new TalentsGrid(speciePresetViewModel.TalentViewModels));
        }

        private async void AcceptClickedAsync(object sender, EventArgs e)
        {
            ffgCharacterViewModel.SetSpeciePreset(speciePresetViewModel);
            await Navigation.PopModalAsync();
        }

        private async void CancelClickedAsync(object sender, EventArgs e)
        {
            await Navigation.PopModalAsync();
        }
    }
}