using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace StarWRPG.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class MotivationLayout : ContentView
	{
        CharacterMotivationViewModel characterMotivation;

        public MotivationLayout (CharacterMotivationViewModel motivation)
		{
			InitializeComponent ();

            characterMotivation = motivation;
            BindingContext = characterMotivation;

            if (characterMotivation.HasValue)
            {
                AddValueToGrid();
            }
		}

        private void AddNewRow()
        {
            MainGrid.RowDefinitions.Insert(0, new RowDefinition { Height = new GridLength(1, GridUnitType.Auto) });

            foreach (var child in MainGrid.Children)
            {
                Grid.SetRow(child, Grid.GetRow(child) + 1);
            }
        }

        private void AddValueToGrid()
        {
            AddNewRow();
            MainGrid.ColumnDefinitions.Add(new ColumnDefinition { Width = new GridLength(1, GridUnitType.Auto) });

            Label valueTitle = new Label
            {
                Text = "Value",
                Style = (Style)Application.Current.Resources["StartBoldLabel"],
                VerticalOptions = LayoutOptions.End,
            };
            Entry valueEntry = new Entry
            {
                HorizontalOptions = LayoutOptions.FillAndExpand,
                Keyboard = Keyboard.Numeric,
            };
            valueEntry.SetBinding(Entry.TextProperty, "Value");

            MainGrid.Children.Add(valueTitle, 2, 0);
            MainGrid.Children.Add(valueEntry, 2, 1);
        }
    }
}