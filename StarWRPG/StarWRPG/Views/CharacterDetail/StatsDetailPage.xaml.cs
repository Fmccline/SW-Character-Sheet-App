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
    public partial class StatsDetailPage : BasePage
    {
        protected override StackLayout mainStackLayout
        {
            get { return MainStackLayout; }
        }

        FFGCharacterViewModel ffgCharacterViewModel;

        public StatsDetailPage(FFGCharacterViewModel character)
        {
            InitializeComponent();

            ffgCharacterViewModel = character;
            BindingContext = ffgCharacterViewModel;
        }
    }
}