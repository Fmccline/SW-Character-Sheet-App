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
    public class MotivationViewModel : CharacterMotivationViewModel
    {  
        public MotivationViewModel() : base(new CharacterMotivation()) { }
        public MotivationViewModel(CharacterMotivationBase motivation) : base(motivation) { }
    }
}
