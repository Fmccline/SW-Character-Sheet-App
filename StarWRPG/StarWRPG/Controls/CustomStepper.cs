using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace StarWRPG.Views
{
    public class CustomStepper : ContentView
    {
        Button incrementButton;
        Button decrementButton;

        public static readonly BindableProperty MaximumProperty = BindableProperty.Create(nameof(Maximum), typeof(uint), typeof(CustomStepper), UInt32.MaxValue);
        public static readonly BindableProperty MinimumProperty = BindableProperty.Create(nameof(Minimum), typeof(uint), typeof(CustomStepper), 0u);
        public static readonly BindableProperty ValueProperty = BindableProperty.Create(nameof(Value), typeof(uint), typeof(CustomStepper), 0u, BindingMode.TwoWay);
        public static readonly BindableProperty IncrementValueProperty = BindableProperty.Create(nameof(IncrementValue), typeof(uint), typeof(CustomStepper), 1u);

        public uint Maximum
        {
            get { return (uint)GetValue(MaximumProperty); }
            set { SetValue(MaximumProperty, value); }
        }
        public uint Minimum
        {
            get { return (uint)GetValue(MinimumProperty); }
            set { SetValue(MinimumProperty, value); }
        }
        public uint Value
        {
            get { return (uint)GetValue(ValueProperty); }
            set
            {
                SetValue(ValueProperty, value);
            }
        }
        public uint IncrementValue
        {
            get { return (uint)GetValue(IncrementValueProperty); }
            set { SetValue(IncrementValueProperty, value); }
        }

        public CustomStepper()
        {
            incrementButton = MakeStepperButton("+", IncrementClicked);
            decrementButton = MakeStepperButton("-", DecrementClicked);

            Content = new StackLayout
            {
                Orientation = StackOrientation.Horizontal,
                Children =
                {
                    decrementButton,
                    incrementButton,
                }
            };
        }

        private void IncrementClicked(object sender, EventArgs e)
        {
            if (Maximum - Value <= IncrementValue)
            {
                Value = Maximum;
                incrementButton.IsEnabled = false;
            }
            else
            {
                Value += IncrementValue;
            }
            decrementButton.IsEnabled = true;
        }

        private void DecrementClicked(object sender, EventArgs e)
        {
            if (Convert.ToInt32(Value) - Convert.ToInt32(IncrementValue) <= Minimum)
            {
                Value = Minimum;
                decrementButton.IsEnabled = false;
            }
            else
            {
                Value -= IncrementValue;
            }
            incrementButton.IsEnabled = true;
        }

        private Button MakeStepperButton(string text, EventHandler clicked)
        {
            var stepperButton = new Button
            {
                Text = text,
                Style = (Style)Application.Current.Resources["DefaultButton"],
                HorizontalOptions = LayoutOptions.Center,
                VerticalOptions = LayoutOptions.Center,
            };
            stepperButton.Clicked += clicked;
            return stepperButton;
        }
    }
}
