using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace StarWRPG.Views
{
    public class TalentsLayout : StackLayout
    {
        public TalentsLayout(List<TalentViewModel> talents)
        {
            HorizontalOptions = LayoutOptions.Center;
            Spacing = 15;

            Children.Add(MakeTitle());
            if (talents.Count > 0)
            {
                foreach (var talent in talents)
                {
                    Children.Add(MakeTalentLabel(talent));
                }
            }
            else
            {
                Children.Add(MakeEmptyLabel());
            }
        }

        private Label MakeTitle()
        {
            return new Label
            {
                Text = "Talents",
                Style = (Style)Application.Current.Resources["CenterBoldLabel"],
            };
        }

        private Label MakeTalentLabel(TalentViewModel talent)
        {
            return new Label
            {
                Text = talent.Name + ": " + talent.Description,
                Style = (Style)Application.Current.Resources["StartLabel"],
            };
        }

        private Label MakeEmptyLabel()
        {
            return new Label
            {
                Text = "None",
                Style = (Style)Application.Current.Resources["CenterLabel"],
            }; 
        }

    }
}
