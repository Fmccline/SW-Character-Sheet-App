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
    public class EmotionalWeaknessesViewModel : CharacterMotivationViewModel
    {
        public EmotionalWeaknessesViewModel() : base(new CharacterEmotionalWeaknesses()) { }
        public EmotionalWeaknessesViewModel(CharacterMotivationBase motivation) : base(motivation) { }

    }
}
