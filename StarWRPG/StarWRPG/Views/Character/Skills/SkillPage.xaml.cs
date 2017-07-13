﻿using StarWRPG.ViewModels;
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
    public partial class SkillPage : ContentPage
    {
        SkillViewModel skillViewModel;

        public SkillPage(SkillViewModel skill)
        {
            InitializeComponent();

            skillViewModel = skill;
            BindingContext = skillViewModel;
        }

        private async void AcceptClickedAsync(object sender, EventArgs e)
        {
            await Navigation.PopModalAsync();
        }

        private async void RankChangedAsync(object sender, ValueChangedEventArgs e)
        {
            uint oldRank = Convert.ToUInt32(e.OldValue);
            uint newRank = Convert.ToUInt32(e.NewValue);

            if (skillViewModel.NotEnoughXP && newRank > oldRank)
            {
                string message = String.Format("You need {0} XP to go from Rank {1} to Rank {2}.",
                                                        skillViewModel.XPToRank(newRank), oldRank, newRank);
                await DisplayAlert("Not enough XP", message, "Ok");
                skillViewModel.NotEnoughXP = false;
            }
        }

        private async void ChangeCharacteristicClickedAsync(object sender, EventArgs e)
        {
            const string AGILITY = "Agility";
            const string BRAWN = "Brawn";
            const string CUNNING = "Cunning";
            const string INTELLECT = "Intellect";
            const string PRESENCE = "Presence";
            const string WILLPOWER = "Willpower";
            string characteristicType = await DisplayActionSheet("Characteristic", "Cancel", null, AGILITY, BRAWN, CUNNING, INTELLECT, PRESENCE, WILLPOWER);
            skillViewModel.ChangeCharacteristic(characteristicType);
        }
    }
}