using StarWRPG.Models;
using StarWRPG.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace StarWRPG.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class FaDStatsPage : ContentPage
    {
        FaDCharacterViewModel fadCharacterViewModel;

        public FaDStatsPage()
        {
            InitializeComponent();

            fadCharacterViewModel = App.ViewModelFactory.FaDCharacterViewModel();
            BindingContext = fadCharacterViewModel;
        }

        void SkillSelected(object sender, SelectedItemChangedEventArgs e)
        {
            fadCharacterViewModel.SkillSelected(sender, e);
        }
    }
}