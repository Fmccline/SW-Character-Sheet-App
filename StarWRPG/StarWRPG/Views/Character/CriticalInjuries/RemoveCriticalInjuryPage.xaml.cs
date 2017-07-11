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
    public partial class RemoveCriticalInjuryPage : ContentPage
    {
        CriticalInjuriesViewModel criticalInjuriesViewModel;

        public RemoveCriticalInjuryPage(CriticalInjuriesViewModel injuries)
        {
            InitializeComponent();

            criticalInjuriesViewModel = injuries;
            BindingContext = criticalInjuriesViewModel;
        }

        private async void InjurySelectedAsync(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem is CriticalInjuryViewModel injury)
            {
                string message = String.Format("\nSeverity: {1}\nResult: {0}", injury.Result, injury.Severity);
                var answer = await DisplayAlert("Remove Injury", message, "Yes", "No");
                if (answer)
                {
                    criticalInjuriesViewModel.RemoveCriticalInjury(injury);
                    await Navigation.PopModalAsync();
                }
                InjuryListView.SelectedItem = null;
            }
        }

        private async void CancelClickedAsync(object sender, EventArgs e)
        {
            await Navigation.PopModalAsync();
        }
    }
}