﻿using StarWRPG.Models;
using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using Xamarin.Forms;

namespace StarWRPG.ViewModels
{
    public class FaDCharacterViewModel : ViewModelBase
    {
        FaDCharacter fadCharacter;

        public ObservableCollection<Skill> Skills
        {
            get { return fadCharacter.Skills; }
            set { fadCharacter.Skills = value; }
        }

        public string Name
        {
            get { return fadCharacter.Name; }

            set
            {
                fadCharacter.Name = value;
                OnPropertyChanged();
            }
        }

        public string Background
        {
            get { return fadCharacter.Background; }

            set
            {
                fadCharacter.Background = value;
                OnPropertyChanged();
            }
        }

        public string Description
        {
            get { return fadCharacter.Description; }

            set
            {
                fadCharacter.Description = value;
                OnPropertyChanged();
            }
        }

        public string Species
        {
            get { return fadCharacter.Species; }

            set
            {
                fadCharacter.Species = value;
                OnPropertyChanged();
            }
        }

        public string Career
        {
            get { return fadCharacter.Career; }

            set
            {
                fadCharacter.Career = value;
                OnPropertyChanged();
            }
        }

        public string SpecializationTrees
        {
            get { return fadCharacter.SpecializationTrees; }

            set
            {
                fadCharacter.SpecializationTrees = value;
                OnPropertyChanged();
            }
        }

        public uint ForceRating
        {
            get { return fadCharacter.ForceRating; }

            set
            {
                fadCharacter.ForceRating = value;
                OnPropertyChanged();
            }
        }

        public uint SoakValue
        {
            get { return fadCharacter.SoakValue; }
            set
            {
                fadCharacter.SoakValue = value;
                OnPropertyChanged();
            }
        }

        public uint CurrentWounds
        {
            get { return fadCharacter.CurrentWounds; }

            set
            {
                fadCharacter.CurrentWounds = value;
                OnPropertyChanged();
            }
        }

        public uint MaxWounds
        {
            get { return fadCharacter.MaxWounds; }

            set
            {
                fadCharacter.MaxWounds = value;
                OnPropertyChanged();
            }
        }

        public uint CurrentStrain
        {
            get { return fadCharacter.CurrentStrain; }

            set
            {
                fadCharacter.CurrentStrain = value;
                OnPropertyChanged();
            }
        }

        public uint MaxStrain
        {
            get { return fadCharacter.MaxStrain; }

            set
            {
                fadCharacter.MaxStrain = value;
                OnPropertyChanged();
            }
        }

        public uint RangedDefense
        {
            get { return fadCharacter.RangedDefense; }

            set
            {
                fadCharacter.RangedDefense = value;
                OnPropertyChanged();
            }
        }

        public uint MeleeDefense
        {
            get { return fadCharacter.MeleeDefense; }

            set
            {
                fadCharacter.MeleeDefense = value;
                OnPropertyChanged();
            }
        }

        public uint Agility
        {
            get { return fadCharacter.Agility.Rank; }

            set
            {
                fadCharacter.Agility.Rank = value;
                OnPropertyChanged();
            }
        }

        public uint Brawn
        {
            get { return fadCharacter.Brawn.Rank; }

            set
            {
                fadCharacter.Brawn.Rank = value;
                OnPropertyChanged();
            }
        }

        public uint Cunning
        {
            get { return fadCharacter.Cunning.Rank; }

            set
            {
                fadCharacter.Cunning.Rank = value;
                OnPropertyChanged();
            }
        }

        public uint Intellect
        {
            get { return fadCharacter.Intellect.Rank; }

            set
            {
                fadCharacter.Intellect.Rank = value;
                OnPropertyChanged();
            }
        }

        public uint Presence
        {
            get { return fadCharacter.Presence.Rank; }

            set
            {
                fadCharacter.Presence.Rank = value;
                OnPropertyChanged();
            }
        }

        public uint Willpower
        {
            get { return fadCharacter.Willpower.Rank; }

            set
            {
                fadCharacter.Willpower.Rank = value;
                OnPropertyChanged();
            }
        }

        public uint TotalXP
        {
            get { return fadCharacter.XP.TotalXP; }
        }

        public uint AvailableXP
        {
            get { return fadCharacter.XP.AvailableXP; }

            set
            {
                uint availableXP = fadCharacter.XP.AvailableXP;
                if (value > availableXP)
                {
                    fadCharacter.XP.AddXP(value - availableXP);
                    // Need to notify the view that TotalXP also changed when adding XP
                    OnPropertyChanged("TotalXP");
                }
                else
                {
                    fadCharacter.XP.SpendXP(availableXP - value);
                }
                OnPropertyChanged();
            }
        }

        public string Motivation
        {
            get { return fadCharacter.Motivation; }
            set
            {
                fadCharacter.Motivation = value;
                OnPropertyChanged();
            }
        }

        public string EmotionalStrengths
        {
            get { return fadCharacter.EmotionalStrengths; }
            set
            {
                fadCharacter.EmotionalStrengths = value;
                OnPropertyChanged();
            }
        }

        public string EmotionalWeaknesses
        {
            get { return fadCharacter.EmotionalWeaknesses; }
            set
            {
                fadCharacter.EmotionalWeaknesses = value;
                OnPropertyChanged();
            }
        }

        public uint Conflict
        {
            get { return fadCharacter.Conflict; }
            set
            {
                fadCharacter.Conflict = value;
                OnPropertyChanged();
            }
        }

        public uint Morality
        {
            get { return fadCharacter.Morality; }
            set
            {
                fadCharacter.Morality = value;
                OnPropertyChanged();
            }
        }

        public Inventory Inventory
        {
            get { return fadCharacter.Inventory; }
            set
            {
                fadCharacter.Inventory = value;
                OnPropertyChanged();
            }
        }

        public FaDCharacterViewModel() : this(new FaDCharacter()) { }

        public FaDCharacterViewModel(FaDCharacter character)
        {
            fadCharacter = character;
        }

        public void SkillSelected(object sender, SelectedItemChangedEventArgs e)
        {
            if (e == null)
                return;
            // TODO: Change this to eventually do something else
            Skill skill = (e.SelectedItem as Skill);
            skill.Rank += 1;
        }

    }
}
