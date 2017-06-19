using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace StarWRPG
{
    public class LabelEditPage : ContentPage
    {
        public LabelEditPage(FaDCharacterViewModel fadCharacterViewModel)
        {
            var previousValue = new Label
            {
                Text = fadCharacterViewModel.SoakValue.ToString(),
            };

            var changedValue = new Entry
            {
                Placeholder = "New value",
                Keyboard = Keyboard.Numeric,
            };

        }
    }
}
