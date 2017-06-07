using StarWRPG.Models;
using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace StarWRPG.ViewModels
{
    public class FaDCharacterViewModel : INotifyPropertyChanged
    {
        FaDCharacter fadCharacter { get; set; }

        public ObservableCollection<Skill> Skills
        {
            get { return fadCharacter.Skills; }

            set
            {
                fadCharacter.Skills = value;
            }
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
            get { return fadCharacter.Wounds.Current; }

            set
            {
                fadCharacter.Wounds.Current = value;
                OnPropertyChanged();
            }
        }

        public uint MaxWounds
        {
            get { return fadCharacter.Wounds.Max; }

            set
            {
                fadCharacter.Wounds.Max = value;
                OnPropertyChanged();
            }
        }

        public uint CurrentStrain
        {
            get { return fadCharacter.Strain.Current; }

            set
            {
                fadCharacter.Strain.Current = value;
                OnPropertyChanged();
            }
        }

        public uint MaxStrain
        {
            get { return fadCharacter.Strain.Max; }

            set
            {
                fadCharacter.Strain.Max = value;
                OnPropertyChanged();
            }
        }

        public uint RangedDefense
        {
            get { return fadCharacter.Defense.Ranged; }

            set
            {
                fadCharacter.Defense.Ranged = value;
                OnPropertyChanged();
            }
        }

        public uint MeleeDefense
        {
            get { return fadCharacter.Defense.Melee; }

            set
            {
                fadCharacter.Defense.Melee = value;
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

        public FaDCharacterViewModel(FaDCharacter character)
        {
			fadCharacter = character;
        }

        public event PropertyChangedEventHandler PropertyChanged;

		protected void OnPropertyChanged([CallerMemberName] string propertyName = "")
		{
			PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
		}

	}
}
