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
                string message = $"{injury.Severity}\n\n{injury.Result}";
                var answer = await DisplayAlert("Remove Injury", message, "Yes", "No");
                if (answer)
                {
                    criticalInjuriesViewModel.RemoveCriticalInjury(injury);
                    await Navigation.PopAsync();
                }
                InjuryListView.SelectedItem = null;
            }
        }
    }
}