using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace StarWRPG.Views
{
    public class TalentsGrid : Grid
    {
        public TalentsGrid(List<TalentViewModel> talents)
        {
            ColumnDefinitions = new ColumnDefinitionCollection
            {
                new ColumnDefinition { Width = new GridLength(2, GridUnitType.Star) },
                new ColumnDefinition { Width = new GridLength(1, GridUnitType.Star) },
                new ColumnDefinition { Width = new GridLength(6, GridUnitType.Star) },
            };

            if (talents.Count > 0)
            {
                AddTitle();
                AddHeader();
                foreach (var skill in talents)
                {
                    AddTalent(skill);
                }
            }
        }

        private void AddTitle()
        {
            RowDefinitions = new RowDefinitionCollection
            {
                new RowDefinition { Height = new GridLength(1, GridUnitType.Star) },
            };
            int row = 0;
            int column = 0;

            var title = new Label
            {
                Text = "Talents",
                Style = (Style)Application.Current.Resources["CenterBoldLabel"]
            };

            Children.Add(title, column++, row);
            SetColumnSpan(title, 3);
        }

        private void AddHeader()
        {
            RowDefinitions.Add(new RowDefinition { Height = new GridLength(1, GridUnitType.Star) });
            int row = RowDefinitions.Count - 1;
            int column = 0;

            var name = new Label
            {
                Text = "Name",
                Style = (Style)Application.Current.Resources["StartBoldLabel"]
            };
            var pageNumber = new Label
            {
                Text = "Page",
                Style = (Style)Application.Current.Resources["CenterBoldLabel"]
            };
            var description = new Label
            {
                Text = "Description",
                Style = (Style)Application.Current.Resources["StartBoldLabel"]
            };

            Children.Add(name, column++, row);
            Children.Add(pageNumber, column++, row);
            Children.Add(description, column++, row);
        }

        private void AddTalent(TalentViewModel talent)
        {
            RowDefinitions.Add(new RowDefinition { Height = new GridLength(1,GridUnitType.Auto) });
            int row = RowDefinitions.Count - 1;
            int column = 0;

            var name = new Label
            {
                Text = talent.Name,
                Style = (Style)Application.Current.Resources["StartLabel"]
            };
            var pageNumber = new Label
            {
                Text = talent.PageNumber.ToString(),
                Style = (Style)Application.Current.Resources["CenterLabel"]
            };
            var description = new Label
            {
                Text = talent.Description,
                Style = (Style)Application.Current.Resources["StartLabel"]
            };

            Children.Add(name, column++, row);
            Children.Add(pageNumber, column++, row);
            Children.Add(description, column++, row);
        }
    }
}
