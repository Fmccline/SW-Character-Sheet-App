using StarWRPG.ViewModels;
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
    public partial class AddCustomSkillPage : ContentPage
    {
        SkillsViewModel skillsViewModel;

        public AddCustomSkillPage(SkillsViewModel skills)
        {
            InitializeComponent();

            skillsViewModel = skills;
            BindingContext = skillsViewModel;
        }
    }
}