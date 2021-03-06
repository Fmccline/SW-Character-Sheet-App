﻿using StarWRPG.ViewModels;
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
    //      Page for creating a custom skill
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class AddCustomSkillPage : ContentPage
    {
        SkillsViewModel skillsViewModel;
        SkillCreationViewModel skillCreationViewModel;

        public AddCustomSkillPage(SkillsViewModel skills)
        {
            InitializeComponent();

            skillsViewModel = skills;

            skillCreationViewModel = new SkillCreationViewModel(skillsViewModel.Characteristics, skillsViewModel.XP);
            BindingContext = skillCreationViewModel;

            AddSaveSkillToolbarItem();
        }

        private void AddSaveSkillToolbarItem()
        {
            ToolbarItem saveSkill = new ToolbarItem
            {
                Text = "Save"
            };
            saveSkill.Clicked += SaveClickedAsync;
            ToolbarItems.Add(saveSkill);
        }

        private async void ChangeCharacteristicClickedAsync(object sender, EventArgs e)
        {
            string[] CharacteristicNames = { "Agility", "Brawn", "Cunning", "Intellect", "Presence", "Willpower", };
            string characteristicType = await DisplayActionSheet("Characteristic", "Cancel", null, CharacteristicNames);
            if (characteristicType != null && !characteristicType.Equals("Cancel"))
            {
                skillCreationViewModel.ChangeCharacteristic(characteristicType);
            }
        }

        private async void SaveClickedAsync(object sender, EventArgs e)
        {
            if (String.IsNullOrWhiteSpace(skillCreationViewModel.Name))
            {
                await DisplayAlert("No Name", "Please name your new skill!", "Ok");
                return;
            }
            var skill = skillCreationViewModel.MakeCustomSkill();
            skillsViewModel.AddSkill(skill);
            await Navigation.PopAsync();
        }
    }
}