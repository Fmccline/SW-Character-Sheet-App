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
    public class EmotionalStrengthsViewModel : CharacterMotivationViewModel
    {
        public EmotionalStrengthsViewModel() : base(new CharacterEmotionalStrengths()) { }
        public EmotionalStrengthsViewModel(CharacterMotivationBase motivation) : base(motivation) { }

        public override string NameOnView
        {
            get { return $"{Name}:"; }
        }
    }
}
