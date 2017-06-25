﻿using StarWRPG.Controls;
using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Xamarin.Forms;

namespace StarWRPG.Views
{
    public class CharacterInventoryCreationPage : CharacterInventoryPage
    {
        public CharacterInventoryCreationPage(FaDCharacterViewModel character) : base(character)
        {
            mainStackLayout.Children.Insert(0, new CharacterCreationNavigationButtons(character, GetType()));
            ToolbarItems.Add(new SaveCharacterToolbarItem(character, this));
        }
    }
}