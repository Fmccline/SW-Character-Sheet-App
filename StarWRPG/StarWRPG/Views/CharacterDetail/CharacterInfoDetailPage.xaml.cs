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
        FaDCharacterViewModel fadCharacterViewModel;

        protected override StackLayout mainStackLayout { get { return MainStackLayout; } }

        public CharacterInfoDetailPage(FaDCharacterViewModel character)
        {
            InitializeComponent();

            fadCharacterViewModel = character;
            BindingContext = fadCharacterViewModel;

            mainStackLayout.Children.Insert(0, new CharacterDetailNavigationButtons(character, GetType()));
            ToolbarItems.Add(new EditCharacterToolbarItem(character, this));
        }
    }
}