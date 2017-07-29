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
    //      Layout for viewing Motivations, Obligations, Duty, and Emotional Strengths/Weaknesses
    public class MotivationDetailLayout : MotivationLayout
    {
        public MotivationDetailLayout(CharacterMotivationViewModel motivation) : base(motivation) { }

        protected override View MakeMotivationDescription()
        {
            Label motivationDescription = new Label
            {
                HorizontalOptions = LayoutOptions.Start,
                Style = (Style)Application.Current.Resources["DefaultLabel"],
            };
            motivationDescription.SetBinding(Label.TextProperty, "Description");
            return motivationDescription;
        }

        protected override View MakeMotivationType()
        {
            Label motivationType = new Label
            {
                Style = (Style)Application.Current.Resources["StartLabel"],
            };
            motivationType.SetBinding(Label.TextProperty, "Type");
            return motivationType;
        }

        protected override View MakeValueView()
        {
            Label valueView = new Label
            {
                Style = (Style)Application.Current.Resources["CenterLabel"],
            };
            valueView.SetBinding(Label.TextProperty, "Value");
            return valueView;
        }
    }
}
