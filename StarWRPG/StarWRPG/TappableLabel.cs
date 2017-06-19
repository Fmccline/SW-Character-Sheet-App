using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace StarWRPG
{
    public class TappableLabel : Label
    {
        string binding;

        public TappableLabel(string bindingValue)
        {
            binding = bindingValue;
            this.SetBinding(TextProperty, binding);
            GestureRecognizers.Add(new TapGestureRecognizer { Command = new Command(() => OnLabelClickedAsync()) });
        }

        private async void OnLabelClickedAsync()
        {
            await Navigation.PushModalAsync(new LabelEditPage(BindingContext, binding));
        }
    }
}
