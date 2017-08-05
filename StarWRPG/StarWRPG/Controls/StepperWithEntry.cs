using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;

using Xamarin.Forms;

namespace StarWRPG.Views
{
    // Intent
    //     Fullfills the purpose of a stepper while also having an entry between the increment/decrement buttons
    public class StepperWithEntry : StackLayout
    {
        public static readonly BindableProperty MaximumProperty = BindableProperty.Create(nameof(Maximum), typeof(uint), typeof(StepperWithEntry), UInt32.MaxValue);
        public static readonly BindableProperty MinimumProperty = BindableProperty.Create(nameof(Minimum), typeof(uint), typeof(StepperWithEntry), 0u);
        public static readonly BindableProperty ValueProperty = BindableProperty.Create(nameof(Value), typeof(uint), typeof(StepperWithEntry), 1u, BindingMode.TwoWay);

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
            set { SetValue(ValueProperty, value); }
        }

        Button incrementButton;
        Button decrementButton;
        Entry incrementValueEntry;

        public StepperWithEntry()
        {
            incrementValueEntry = MakeIncrementValueEntry();
            incrementButton = MakeButton("+", IncrementClicked);
            decrementButton = MakeButton("-", DecrementClicked);

            Orientation = StackOrientation.Horizontal;
            Children.Add(decrementButton);
            Children.Add(incrementValueEntry);
            Children.Add(incrementButton);
        }

        private Entry MakeIncrementValueEntry()
        {
            return new Entry
            {
                HorizontalOptions = LayoutOptions.FillAndExpand,
                Keyboard = Keyboard.Numeric,
                Text = 1.ToString(),
                Style = (Style)Application.Current.Resources["DefaultEntry"],
            };
        }

        private Button MakeButton(string text, EventHandler clicked)
        {
            Button button = new Button
            {
                Text = text,
                WidthRequest = 50,
                Style = (Style)Application.Current.Resources["DefaultButton"],
            };
            button.Clicked += clicked;
            return button;
        }

        private void DecrementClicked(object sender, EventArgs e)
        {
            if (UInt32.TryParse(incrementValueEntry.Text, out uint decrement))
            {
                int value = Convert.ToInt32(Value);
                if (value - decrement <= 0)
                {
                    Value = 0;
                    decrementButton.IsEnabled = false;
                }
                else
                {
                    Value -= decrement;
                }
                incrementButton.IsEnabled = true;
            }
        }

        private void IncrementClicked(object sender, EventArgs e)
        {
            if (UInt32.TryParse(incrementValueEntry.Text, out uint increment))
            {
                if (Maximum - increment >= Value)
                {
                    Value += increment;
                }
                else
                {
                    Value = Maximum;
                    incrementButton.IsEnabled = false;
                }
                decrementButton.IsEnabled = true;
            }
        }
    }
}