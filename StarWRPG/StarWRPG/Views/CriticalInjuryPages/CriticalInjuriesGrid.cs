using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace StarWRPG.Views
{
    class CriticalInjuriesGrid : StackLayout
    {
        ObservableCollection<CriticalInjuryViewModel> criticalInjuries;
        CriticalInjuriesViewModel criticalInjuriesViewModel;

        public CriticalInjuriesGrid(CriticalInjuriesViewModel injuriesViewModel)
        {
            criticalInjuriesViewModel = injuriesViewModel;
            criticalInjuries = criticalInjuriesViewModel.CriticalInjuryViewModels;

            criticalInjuries.CollectionChanged += (obj, e) =>
            {
                GenerateLayout();
            };

            GenerateLayout();
        }

        private void GenerateLayout()
        {
            HorizontalOptions = LayoutOptions.FillAndExpand;

            Children.Clear();

            Children.Add(Title());
            if (criticalInjuries.Count > 0)
            {
                Children.Add(GenerateGrid());
            }
            Children.Add(ButtonsLayout());
        }

        private Grid GenerateGrid()
        {
            Grid injuriesGrid = new Grid();
            injuriesGrid.ColumnDefinitions.Add(new ColumnDefinition { Width = new GridLength(1, GridUnitType.Star) });
            injuriesGrid.ColumnDefinitions.Add(new ColumnDefinition { Width = new GridLength(4, GridUnitType.Star) });
            AddHeader(injuriesGrid);
            AddChildren(injuriesGrid);
            return injuriesGrid;
        }

        private StackLayout ButtonsLayout()
        {
            Button addButton = new Button
            {
                Text = "Add",
                HorizontalOptions = LayoutOptions.CenterAndExpand,
            };
            addButton.Clicked += async (obj, e) => 
            {
                await Navigation.PushModalAsync(new AddCriticalInjuryPage(criticalInjuriesViewModel));
            };

            Button removeButton = new Button
            {
                Text = "Remove",
                HorizontalOptions = LayoutOptions.CenterAndExpand,
            };
            removeButton.Clicked += async (obj, e) =>
            {
                await Navigation.PushModalAsync(new RemoveCriticalInjuryPage(criticalInjuriesViewModel));
            };

            if (criticalInjuries.Count == 0)
                removeButton.IsEnabled = false;

            return new StackLayout
            {
                Orientation = StackOrientation.Horizontal,
                Children =
                {
                    addButton,
                    removeButton,
                }
            };
        }

        private void AddChildren(Grid grid)
        {
            for (var index = 0; index < criticalInjuries.Count; ++index)
            {
                grid.RowDefinitions.Add(new RowDefinition { Height = new GridLength(1, GridUnitType.Auto) });
                Label injurySeverity = new Label
                {
                    Text = criticalInjuries[index].Severity,
                    Style = (Style)Application.Current.Resources["CenterLabel"]
                };
                Label injuryResult = new Label
                {
                    Text = criticalInjuries[index].Result,
                    Style = (Style)Application.Current.Resources["CenterLabel"]
                };
                grid.Children.Add(injurySeverity, 0, index + 2);
                grid.Children.Add(injuryResult, 1, index + 2);
            }
        }

        private void AddHeader(Grid grid)
        {
            grid.RowDefinitions.Add(new RowDefinition { Height = new GridLength(1, GridUnitType.Auto) });

            Label severity = new Label
            {
                Text = "Severity",
                Style = (Style)Application.Current.Resources["CenterLabel"]
            };

            Label result = new Label
            {
                Text = "Result",
                Style = (Style)Application.Current.Resources["CenterLabel"]
            };

            grid.Children.Add(severity, 0, 1);
            grid.Children.Add(result, 1, 1);
        }

        private Label Title()
        {
            return new Label
            {
                Text = "Critical Injuries",
                HorizontalOptions=LayoutOptions.CenterAndExpand,
                Style = (Style)Application.Current.Resources["CenterBoldLabel"],
            };
        }
    }
}
