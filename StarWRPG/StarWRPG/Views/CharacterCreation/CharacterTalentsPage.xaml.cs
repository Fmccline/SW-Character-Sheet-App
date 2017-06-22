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
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class CharacterTalentsPage : ContentPage
    {
        FaDCharacterViewModel fadCharacterViewModel;

        public CharacterTalentsPage(FaDCharacterViewModel character)
        {
            InitializeComponent();

            fadCharacterViewModel = character;
            BindingContext = fadCharacterViewModel;

            MainStackLayout.Children.Insert(0, new CharacterCreationNavigationButtons(fadCharacterViewModel, GetType()));
        }
    }
}