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
    public class DutyViewModel : CharacterMotivationViewModel
    {  
        public DutyViewModel() : base(new CharacterDuty()) { }
        public DutyViewModel(CharacterMotivationBase motivation) : base(motivation) { }

    }
}
