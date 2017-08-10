using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using StarWRPG.ViewModels;
using Xamarin.Forms;

namespace StarWRPG.Views
{
    // Intent
    //      Layout for creating Motivations, Obligations, Duty, and Emotional Strengths/Weaknesses
    public class MotivationCreationLayout : MotivationLayout
    {
        public MotivationCreationLayout(CharacterMotivationViewModel motivation) : base(motivation) { }

        protected override View MakeMotivationDescription()
        {
            Editor motivationDescription = new Editor
            {
                HorizontalOptions = LayoutOptions.FillAndExpand,
                Style = (Style)Application.Current.Resources["DefaultEditor"],
            };
            motivationDescription.SetBinding(Editor.TextProperty, "Description");
            return motivationDescription;
        }

        protected override View MakeMotivationType()
        {
            Entry motivationType = new Entry
            {
                HorizontalOptions = LayoutOptions.FillAndExpand,
                Style = (Style)Application.Current.Resources["DefaultEntry"],
            };
            motivationType.SetBinding(Entry.TextProperty, "Type");
            return motivationType;
        }

        protected override View MakeValueView()
        {
            Entry valueView = new Entry
            {
                HorizontalOptions = LayoutOptions.FillAndExpand,
                Keyboard = Keyboard.Numeric,
                Style = (Style)Application.Current.Resources["DefaultEntry"],
            };
            valueView.SetBinding(Entry.TextProperty, "Value");
            return valueView;
        }
    }
}
