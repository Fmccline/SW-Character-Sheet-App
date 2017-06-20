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
    public partial class EditorPage : ContentPage
    {
        string binding;

        public EditorPage(string title, string binding, FaDCharacterViewModel characterViewModel)
        {
            InitializeComponent();
            BindingContext = characterViewModel;
            this.binding = binding;

            TitleLabel.Text = title;
            Editor.SetBinding(Editor.TextProperty, binding, BindingMode.OneWay);
        }

        private async void CancelClickedAsync(object sender, EventArgs e)
        {
            var answer = await DisplayAlert("Are you sure?", "Your changes will not be saved.", "Yes", "No");
            if (answer)
            {
                await Navigation.PopModalAsync();
            }
        }

        private async void AcceptClickedAsync(object sender, EventArgs e)
        {
            Editor.SetBinding(Editor.TextProperty, binding, BindingMode.OneWayToSource);
            await Navigation.PopModalAsync();
        }
    }
}