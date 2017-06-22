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
    public partial class AddCriticalInjuryPage : ContentPage
    {
        CriticalInjuriesViewModel criticalInjuriesViewModel;
        CriticalInjuryViewModel criticalInjury;

        public AddCriticalInjuryPage(CriticalInjuriesViewModel injuries)
        {
            InitializeComponent();

            criticalInjuriesViewModel = injuries;

            criticalInjury = new CriticalInjuryViewModel();
            BindingContext = criticalInjury;
        }

        private async void AcceptClickedAsync(object sender, EventArgs e)
        {
            criticalInjuriesViewModel.AddCriticalInjury(criticalInjury);
            await Navigation.PopModalAsync();
        }

        private async void CancelClickedAsync(object sender, EventArgs e)
        {
            var answer = await DisplayAlert("Are you sure?", "Cancelling will not save the critical injury.", "Yes", "No");
            if (answer)
                await Navigation.PopModalAsync();
        }
    }
}