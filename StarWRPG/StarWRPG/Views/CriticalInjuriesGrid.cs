using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace StarWRPG.Views
{
    class CriticalInjuriesGrid : Grid
    {
        ObservableCollection<CriticalInjuryViewModel> criticalInjuries;
        CriticalInjuriesViewModel criticalInjuriesViewModel;

        public CriticalInjuriesGrid(CriticalInjuriesViewModel injuriesViewModel)
        {
            criticalInjuriesViewModel = injuriesViewModel;
            criticalInjuries = criticalInjuriesViewModel.CriticalInjuryViewModels;

            criticalInjuries.CollectionChanged += (obj, e) =>
            {
                Children.Clear();
                RowDefinitions.Clear();
                GenerateGrid();
            };

            ColumnDefinitions.Add(new ColumnDefinition { Width = new GridLength(1, GridUnitType.Star) });
            ColumnDefinitions.Add(new ColumnDefinition { Width = new GridLength(4, GridUnitType.Star) });

            GenerateGrid();
        }

        private void GenerateGrid()
        {
            AddTitle();
            if (criticalInjuries.Count > 0)
            {
                AddHeader();
                AddChildren();
            }
        }

        private void AddChildren()
        {
            for (var index = 0; index < criticalInjuries.Count; ++index)
            {
                RowDefinitions.Add(new RowDefinition { Height = new GridLength(1, GridUnitType.Auto) });
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
                Children.Add(injurySeverity, 0, index + 2);
                Children.Add(injuryResult, 1, index + 2);
            }
        }

        private void AddHeader()
        {
            RowDefinitions.Add(new RowDefinition { Height = new GridLength(1, GridUnitType.Auto) });

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

            Children.Add(severity, 0, 1);
            Children.Add(result, 1, 1);
        }

        private void AddTitle()
        {
            RowDefinitions.Add(new RowDefinition { Height = new GridLength(1, GridUnitType.Auto) });

            Label title = new Label
            {
                Text = "Critical Injuries",
                Style = (Style)Application.Current.Resources["CenterBoldLabel"],
            };

            Children.Add(title, 0, 0);

            SetColumnSpan(title, 2);
        }
    }
}
