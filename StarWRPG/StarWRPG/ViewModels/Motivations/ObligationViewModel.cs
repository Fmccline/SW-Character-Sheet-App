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
    public class ObligationViewModel : CharacterMotivationViewModel
    {  
        public ObligationViewModel() : base(new CharacterObligation()) { }
        public ObligationViewModel(CharacterMotivationBase motivation) : base(motivation) { }
    }
}
