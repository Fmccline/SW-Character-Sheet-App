using StarWRPG.Models;
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
        public FaDCharacter FaDCharacter { get; private set; }

        public ObservableCollection<Skill> Skills
        {
            get { return FaDCharacter.Skills; }
            set { FaDCharacter.Skills = value; }
        }

        public string Name
        {
            get { return FaDCharacter.Name; }

            set
            {
                FaDCharacter.Name = value;
                OnPropertyChanged();
            }
        }

        public string Background
        {
            get { return FaDCharacter.Background; }

            set
            {
                FaDCharacter.Background = value;
                OnPropertyChanged();
            }
        }

        public string Description
        {
            get { return FaDCharacter.Description; }

            set
            {
                FaDCharacter.Description = value;
                OnPropertyChanged();
            }
        }

        public string Species
        {
            get { return FaDCharacter.Species; }

            set
            {
                FaDCharacter.Species = value;
                OnPropertyChanged();
            }
        }

        public string Career
        {
            get { return FaDCharacter.Career; }

            set
            {
                FaDCharacter.Career = value;
                OnPropertyChanged();
            }
        }

        public string SpecializationTrees
        {
            get { return FaDCharacter.SpecializationTrees; }

            set
            {
                FaDCharacter.SpecializationTrees = value;
                OnPropertyChanged();
            }
        }

        public uint ForceRating
        {
            get { return FaDCharacter.ForceRating; }

            set
            {
                FaDCharacter.ForceRating = value;
                OnPropertyChanged();
            }
        }

        public uint SoakValue
        {
            get { return FaDCharacter.SoakValue; }
            set
            {
                FaDCharacter.SoakValue = value;
                OnPropertyChanged();
            }
        }

        public uint CurrentWounds
        {
            get { return FaDCharacter.CurrentWounds; }

            set
            {
                FaDCharacter.CurrentWounds = value;
                OnPropertyChanged();
            }
        }

        public uint MaxWounds
        {
            get { return FaDCharacter.MaxWounds; }

            set
            {
                FaDCharacter.MaxWounds = value;
                OnPropertyChanged();
            }
        }

        public uint CurrentStrain
        {
            get { return FaDCharacter.CurrentStrain; }

            set
            {
                FaDCharacter.CurrentStrain = value;
                OnPropertyChanged();
            }
        }

        public uint MaxStrain
        {
            get { return FaDCharacter.MaxStrain; }

            set
            {
                FaDCharacter.MaxStrain = value;
                OnPropertyChanged();
            }
        }

        public uint RangedDefense
        {
            get { return FaDCharacter.RangedDefense; }

            set
            {
                FaDCharacter.RangedDefense = value;
                OnPropertyChanged();
            }
        }

        public uint MeleeDefense
        {
            get { return FaDCharacter.MeleeDefense; }

            set
            {
                FaDCharacter.MeleeDefense = value;
                OnPropertyChanged();
            }
        }

        public uint Agility
        {
            get { return FaDCharacter.Agility.Rank; }

            set
            {
                FaDCharacter.Agility.Rank = value;
                OnPropertyChanged();
            }
        }

        public uint Brawn
        {
            get { return FaDCharacter.Brawn.Rank; }

            set
            {
                FaDCharacter.Brawn.Rank = value;
                OnPropertyChanged();
            }
        }

        public uint Cunning
        {
            get { return FaDCharacter.Cunning.Rank; }

            set
            {
                FaDCharacter.Cunning.Rank = value;
                OnPropertyChanged();
            }
        }

        public uint Intellect
        {
            get { return FaDCharacter.Intellect.Rank; }

            set
            {
                FaDCharacter.Intellect.Rank = value;
                OnPropertyChanged();
            }
        }

        public uint Presence
        {
            get { return FaDCharacter.Presence.Rank; }

            set
            {
                FaDCharacter.Presence.Rank = value;
                OnPropertyChanged();
            }
        }

        public uint Willpower
        {
            get { return FaDCharacter.Willpower.Rank; }

            set
            {
                FaDCharacter.Willpower.Rank = value;
                OnPropertyChanged();
            }
        }

        public uint TotalXP
        {
            get { return FaDCharacter.XP.TotalXP; }
        }

        public uint AvailableXP
        {
            get { return FaDCharacter.XP.AvailableXP; }

            set
            {
                uint availableXP = FaDCharacter.XP.AvailableXP;
                if (value > availableXP)
                {
                    FaDCharacter.XP.AddXP(value - availableXP);
                    // Need to notify the view that TotalXP also changed when adding XP
                    OnPropertyChanged("TotalXP");
                }
                else
                {
                    FaDCharacter.XP.SpendXP(availableXP - value);
                }
                OnPropertyChanged();
            }
        }

        public string Motivation
        {
            get { return FaDCharacter.Motivation; }
            set
            {
                FaDCharacter.Motivation = value;
                OnPropertyChanged();
            }
        }

        public string EmotionalStrengths
        {
            get { return FaDCharacter.EmotionalStrengths; }
            set
            {
                FaDCharacter.EmotionalStrengths = value;
                OnPropertyChanged();
            }
        }

        public string EmotionalWeaknesses
        {
            get { return FaDCharacter.EmotionalWeaknesses; }
            set
            {
                FaDCharacter.EmotionalWeaknesses = value;
                OnPropertyChanged();
            }
        }

        public uint Conflict
        {
            get { return FaDCharacter.Conflict; }
            set
            {
                FaDCharacter.Conflict = value;
                OnPropertyChanged();
            }
        }

        public uint Morality
        {
            get { return FaDCharacter.Morality; }
            set
            {
                FaDCharacter.Morality = value;
                OnPropertyChanged();
            }
        }

        public Inventory Inventory
        {
            get { return FaDCharacter.Inventory; }
            set
            {
                FaDCharacter.Inventory = value;
                OnPropertyChanged();
            }
        }

        public FaDCharacterViewModel() : this(new FaDCharacter()) { }

        public FaDCharacterViewModel(FaDCharacter character)
        {
            FaDCharacter = character;
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
