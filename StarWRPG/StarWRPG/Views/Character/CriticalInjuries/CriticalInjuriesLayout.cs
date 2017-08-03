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
    class CriticalInjuriesLayout : Grid
    {
        ObservableCollection<CriticalInjuryViewModel> criticalInjuries;
        CriticalInjuriesViewModel criticalInjuriesViewModel;

        public CriticalInjuriesLayout(CriticalInjuriesViewModel injuriesViewModel)
        {
            ColumnDefinitions.Add(new ColumnDefinition { Width = new GridLength(1, GridUnitType.Star) });
            ColumnDefinitions.Add(new ColumnDefinition { Width = new GridLength(3, GridUnitType.Star) });

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
            RowDefinitions.Clear();
            Children.Clear();
            AddHeader();

            if (criticalInjuries.Count > 0)
            {
                AddChildren();
            }
            else
            {
                AddNoCritsLabel();
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
                    Style = (Style)Application.Current.Resources["StartLabel"]
                };
                Children.Add(injurySeverity, 0, index + 2);
                Children.Add(injuryResult, 1, index + 2);
            }
        }

        private void AddNoCritsLabel()
        {
            RowDefinitions.Add(new RowDefinition { Height = new GridLength(1, GridUnitType.Auto) });

            Label noCrit = new Label
            {
                Text = "None",
                Style = (Style)Application.Current.Resources["CenterLabel"]
            };

            Children.Add(noCrit, 0, 1);
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
                Style = (Style)Application.Current.Resources["StartLabel"]
            };

            Children.Add(severity, 0, 0);
            Children.Add(result, 1, 0);
        }
    }
}
