using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;

using Xamarin.Forms;

namespace StarWRPG.Views
{
    public class SkillsGrid : Grid
    {
        public SkillsGrid(List<SkillViewModel> skills)
        {
            ColumnDefinitions = new ColumnDefinitionCollection
            {
                new ColumnDefinition { Width = new GridLength(3, GridUnitType.Star) },
                new ColumnDefinition { Width = new GridLength(1, GridUnitType.Star) },
                new ColumnDefinition { Width = new GridLength(1, GridUnitType.Star) },
            };

            if (skills.Count > 0)
            {
                AddTitle();
                AddHeader();
                foreach (var skill in skills)
                {
                    AddSkill(skill);
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
                Text = "Skills",
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

            var title = new Label
            {
                Text = "Skills",
                Style = (Style)Application.Current.Resources["CenterBoldLabel"]
            };
            var name = new Label
            {
                Text = "Name",
                Style = (Style)Application.Current.Resources["StartBoldLabel"]
            };
            var rank = new Label
            {
                Text = "Rank",
                Style = (Style)Application.Current.Resources["CenterBoldLabel"]
            };
            var isCareer = new Label
            {
                Text = "Career",
                Style = (Style)Application.Current.Resources["CenterBoldLabel"]
            };

            Children.Add(name, column++, row);
            Children.Add(rank, column++, row);
            Children.Add(isCareer, column++, row);
        }

        private void AddSkill(SkillViewModel skill)
        {
            RowDefinitions.Add(new RowDefinition { Height = new GridLength(1, GridUnitType.Star) });
            int row = RowDefinitions.Count-1;
            int column = 0;

            var name = new Label
            {
                Text = skill.Name,
                Style = (Style)Application.Current.Resources["StartLabel"]
            };
            var rank = new Label
            {
                Text = skill.Rank.ToString(),
                Style = (Style)Application.Current.Resources["CenterLabel"]
            };
            var isCareer = new Label
            {
                Text = skill.IsCareer ? "Yes" : "No",
                Style = (Style)Application.Current.Resources["CenterLabel"]
            };

            Children.Add(name, column++, row);
            Children.Add(rank, column++, row);
            Children.Add(isCareer, column++, row);
        }
    }
}