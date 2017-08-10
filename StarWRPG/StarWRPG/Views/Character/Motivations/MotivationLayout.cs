using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace StarWRPG.Views
{
    // Intent
    //      Base layout for viewing/editing/creating motivations
    public abstract class MotivationLayout : Grid
    {
        CharacterMotivationViewModel characterMotivation;
        public string MotivationName { get { return characterMotivation.Name; } }
        public string MotivationDescription { get { return characterMotivation.Description; } }

        public MotivationLayout(CharacterMotivationViewModel motivation)
        {
            characterMotivation = motivation;
            BindingContext = characterMotivation;

            GenerateGrid();

            if (characterMotivation.HasValue)
            {
                AddValueToGrid();
            }
        }

        protected abstract View MakeMotivationDescription();
        protected abstract View MakeMotivationType();
        protected abstract View MakeValueView();

        private Label MakeMotivationName()
        {
            Label name = new Label
            {
                Style = (Style)Application.Current.Resources["StartBoldLabel"],
            };
            name.SetBinding(Label.TextProperty, "NameOnView");
            return name;
        }
        private Label MakeValueTitle()
        {
            return new Label
            {
                Text = "Value",
                Style = (Style)Application.Current.Resources["StartBoldLabel"],
                VerticalOptions = LayoutOptions.End,
            };
        }

        private void GenerateGrid()
        {
            ColumnDefinitions.Add(new ColumnDefinition { Width = new GridLength(1, GridUnitType.Auto) });
            ColumnDefinitions.Add(new ColumnDefinition { Width = new GridLength(1, GridUnitType.Star) });
            RowDefinitions.Add(new RowDefinition { Height = new GridLength(1, GridUnitType.Star) });
            RowDefinitions.Add(new RowDefinition { Height = new GridLength(2, GridUnitType.Star) });

            Label motivationName = MakeMotivationName();
            View motivationType = MakeMotivationType();
            View motivationDescription = MakeMotivationDescription();

            Children.Add(motivationName, 0, 0);
            Children.Add(motivationType, 1, 0);
            Children.Add(motivationDescription, 0, 1);
            SetColumnSpan(motivationDescription, 2);
        }

        private void InsertNewRow()
        {
            RowDefinitions.Insert(0, new RowDefinition { Height = new GridLength(1, GridUnitType.Auto) });

            foreach (var child in Children)
            {
                SetRow(child, GetRow(child) + 1);
            }
        }
        private void AddNewColumn()
        {
            ColumnDefinitions.Add(new ColumnDefinition { Width = new GridLength(1, GridUnitType.Auto) });
        }
        private void AddValueToGrid()
        {
            InsertNewRow();
            AddNewColumn();
            Label valueTitle = MakeValueTitle();
            View valueView = MakeValueView();
            Children.Add(valueTitle, 2, 0);
            Children.Add(valueView, 2, 1);
        }
    }
}
