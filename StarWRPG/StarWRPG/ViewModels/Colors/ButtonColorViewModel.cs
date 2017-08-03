using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace StarWRPG.ViewModels
{
    public class ButtonColorViewModel : ColorViewModel
    {
        public override void SaveColor()
        {
            UserSettings.ButtonColor = CustomColor;
        }
    }
}
