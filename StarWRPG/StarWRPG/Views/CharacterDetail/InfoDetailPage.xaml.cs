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
        public InfoDetailPage(FFGCharacterViewModel character) : base(character)
        {
            InitializeComponent();

            BindingContext = ffgCharacterViewModel;

            CriticalInjuriesLayout.Children.Add(new CriticalInjuriesLayout(ffgCharacterViewModel.CriticalInjuriesViewModel));
        }

        private async void AddCriticalInjuryAsync(object sender, System.EventArgs e)
        {
            await Navigation.PushAsync(new AddCriticalInjuryPage(ffgCharacterViewModel.CriticalInjuriesViewModel));
        }

        private async void RemoveCriticalInjuryAsync(object sender, System.EventArgs e)
        {
            await Navigation.PushAsync(new RemoveCriticalInjuryPage(ffgCharacterViewModel.CriticalInjuriesViewModel));
        }
    }
}