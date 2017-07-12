using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Input;
using Xamarin.Forms;

namespace StarWRPG.Views
{
    public class CustomSearchBar : SearchBar
    {
        public static readonly BindableProperty TextChangedCommandProperty = BindableProperty.Create(
            nameof(TextChangedCommand),
            typeof(ICommand),
            typeof(StepperWithEntry),
            null);

        public ICommand TextChangedCommand
        {
            get { return (ICommand)GetValue(TextChangedCommandProperty); }
            set { SetValue(TextChangedCommandProperty, value); }
        }

        public CustomSearchBar()
        {
            TextChanged += SearchTextChanged;
        }

        private void SearchTextChanged(object sender, TextChangedEventArgs e)
        {
            if (Text.Equals(""))
            {
                if (TextChangedCommand.CanExecute(null))
                {
                    TextChangedCommand.Execute(null);
                }
                if (IsFocused)
                {
                    Unfocus();
                }
            }
        }
    }
}