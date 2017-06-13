using StarWRPG.Models;
using StarWRPG.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace StarWRPG.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class FaDBasicInfoPage : ContentPage
    {
        FaDCharacterViewModel fadCharacterViewModel;

        public FaDBasicInfoPage()
        {
            InitializeComponent();

            fadCharacterViewModel = App.ViewModelFactory.FaDCharacterViewModel();
            BindingContext = fadCharacterViewModel;
        }
    }
}