using StarWRPG.Controls;
using StarWRPG.Models;
using StarWRPG.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace StarWRPG.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class CharacterInfoDetailPage : BasePage
    {
        FFGCharacterViewModel ffgCharacterViewModel;

        protected override StackLayout mainStackLayout { get { return MainStackLayout; } }

        public CharacterInfoDetailPage(FFGCharacterViewModel character)
        {
            InitializeComponent();

            ffgCharacterViewModel = character;
            BindingContext = ffgCharacterViewModel;

            ScrollViewStackLayout.Children.Add(new CriticalInjuriesLayout(ffgCharacterViewModel.CriticalInjuriesViewModel));
        }
    }
}