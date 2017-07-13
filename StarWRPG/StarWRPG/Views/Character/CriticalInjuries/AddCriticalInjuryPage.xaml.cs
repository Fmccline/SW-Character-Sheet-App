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

        public AddCriticalInjuryPage(CriticalInjuriesViewModel injuries)
        {
            InitializeComponent();

            criticalInjuriesViewModel = injuries;
            BindingContext = criticalInjuriesViewModel;
        }

        private async void AcceptClickedAsync(object sender, EventArgs e)
        {
            if (ResultEntry.Text.Equals("") || SeverityEntry.Text.Equals(""))
            {
                await DisplayAlert("Invalid", "Please enter the Result and Severity of the critical injury.", "Of course, silly me!");
            }
            else
            {
                CriticalInjuryViewModel criticalInjury = new CriticalInjuryViewModel
                {
                    Result = ResultEntry.Text,
                    Severity = SeverityEntry.Text,
                };
                criticalInjuriesViewModel.AddCriticalInjury(criticalInjury);
                await Navigation.PopModalAsync();
            }
        }

        private async void CancelClickedAsync(object sender, EventArgs e)
        {
            await Navigation.PopModalAsync();
        }
    }
}