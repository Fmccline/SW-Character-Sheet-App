﻿using StarWRPG.Controls;
using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Xamarin.Forms;

namespace StarWRPG.Views
{
    public class CharacterSkillsCreationPage : CharacterSkillsPage
    {
        public CharacterSkillsCreationPage(FFGCharacterViewModel character) : base(character)
        {
            ToolbarItems.Add(new SaveCharacterToolbarItem(character, this));
        }
    }
}