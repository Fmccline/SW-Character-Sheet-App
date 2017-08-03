using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace StarWRPG.ViewModels
{
    public class TextColorViewModel : ColorViewModel
    {
        public TextColorViewModel(Color previousColor) : base(previousColor) { }

        public override void SaveColor()
        {
            UserSettings.TextColor = CustomColor;
        }
    }
}
