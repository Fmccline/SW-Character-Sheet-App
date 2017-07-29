using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Input;
using Xamarin.Forms;

namespace StarWRPG.Views
{
    /* Intent
     *      For using a similar search bar that has a default Unfocus call if search text is empty
     */
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

            SetDynamicResource(StyleProperty, "DefaultSearchBar");
        }

        // Unfocuses the search bar if the cancel button is clicked
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