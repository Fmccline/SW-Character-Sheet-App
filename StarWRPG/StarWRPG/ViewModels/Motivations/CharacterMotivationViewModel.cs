using StarWRPG.Models;
using StarWRPG.Views;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace StarWRPG.ViewModels
{
    public abstract class CharacterMotivationViewModel : ViewModelBase
    {
        public CharacterMotivationBase CharacterMotivation;

        public string Name
        {
            get { return CharacterMotivation.Name; }
        }
        public string Type
        {
            get { return CharacterMotivation.Type; }
            set
            {
                CharacterMotivation.Type = value;
                OnPropertyChanged();
            }
        }
        public string Description
        {
            get { return CharacterMotivation.Description; }
            set
            {
                CharacterMotivation.Description = value;
                OnPropertyChanged();
            }
        }
        public bool HasValue
        {
            get { return CharacterMotivation.HasValue; }
        }
        public uint Value
        {
            get { return CharacterMotivation.Value; }
            set
            {
                CharacterMotivation.Value = value;
                OnPropertyChanged();
            }
        }

        public CharacterMotivationViewModel(CharacterMotivationBase motivation)
        {
            CharacterMotivation = motivation;
        }
    }
}
