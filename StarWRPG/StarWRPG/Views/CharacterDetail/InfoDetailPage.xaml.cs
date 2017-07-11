using StarWRPG.Controls;
using StarWRPG.Models;
using StarWRPG.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace StarWRPG.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class InfoDetailPage : BasePage
    {
        FFGCharacterViewModel ffgCharacterViewModel;

        protected override StackLayout mainStackLayout { get { return MainStackLayout; } }

        public InfoDetailPage(FFGCharacterViewModel character)
        {
            InitializeComponent();

            ffgCharacterViewModel = character;
            BindingContext = ffgCharacterViewModel;

            CriticalInjuriesLayout.Children.Add(new CriticalInjuriesLayout(ffgCharacterViewModel.CriticalInjuriesViewModel));
        }

        private async void AddCriticalInjuryAsync(object sender, System.EventArgs e)
        {
            await Navigation.PushModalAsync(new AddCriticalInjuryPage(ffgCharacterViewModel.CriticalInjuriesViewModel));
        }

        private async void RemoveCriticalInjuryAsync(object sender, System.EventArgs e)
        {
            await Navigation.PushModalAsync(new RemoveCriticalInjuryPage(ffgCharacterViewModel.CriticalInjuriesViewModel));
        }
    }
}