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
    public partial class SkillUsesGrid : ContentView
    {
        public SkillUsesGrid(List<string> skillUses)
        {
            InitializeComponent();

            foreach (var skillUse in skillUses)
            {
                AddSkillUse(skillUse);
            }
        }

        private void AddSkillUse(string skillUse)
        {
            skillUsesGrid.RowDefinitions.Add(new RowDefinition { Height = new GridLength(1, GridUnitType.Auto) });
            int row = skillUsesGrid.RowDefinitions.Count - 1;

            var skillUseLabel = new Label
            {
                Text = skillUse,
                Style = (Style)Application.Current.Resources["StartLabel"],
            };

            skillUsesGrid.Children.Add(BulletLabel(), 0, row);
            skillUsesGrid.Children.Add(skillUseLabel, 1, row);
        }

        private Label BulletLabel()
        {
            return new Label
            {
                Text = "\u2022",
                Style = (Style)Application.Current.Resources["CenterBoldLabel"],
            };
        }
    }
}