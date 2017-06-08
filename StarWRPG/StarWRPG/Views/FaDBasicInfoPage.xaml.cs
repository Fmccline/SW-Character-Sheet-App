using StarWRPG.Models;
using StarWRPG.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace StarWRPG.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class FaDBasicInfoPage : ContentPage
    {
        public FaDBasicInfoPage(FaDCharacter character)
        {
            InitializeComponent();

            BindingContext = new FaDCharacterViewModel(character);
        }
    }
}