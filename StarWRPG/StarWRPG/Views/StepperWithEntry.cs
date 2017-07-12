using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;

using Xamarin.Forms;

namespace StarWRPG.Views
{
    public class StepperWithEntry : StackLayout
    {
        public static readonly BindableProperty MaximumProperty = BindableProperty.Create(nameof(Maximum), typeof(uint), typeof(StepperWithEntry), 0u);
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
            };
        }

        private Button MakeButton(string text, EventHandler clicked)
        {
            Button button = new Button
            {
                Text = text,
                WidthRequest = 50,
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
                if (Maximum == 0 || Value + increment < Maximum)
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