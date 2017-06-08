using StarWRPG.Models;
using StarWRPG.ViewModels;
using Xamarin.Forms;

namespace StarWRPG.Views
{
	public partial class FaDCharacterDetailsPage : TabbedPage
	{
        FaDCharacterViewModel fadCharacterViewModel;

		public FaDCharacterDetailsPage(FaDCharacter FaDCharacter)
		{
			InitializeComponent();
            fadCharacterViewModel = new FaDCharacterViewModel(FaDCharacter);
            BindingContext = fadCharacterViewModel;
		}

        void SkillSelected(object sender, SelectedItemChangedEventArgs e)
        {
            fadCharacterViewModel.SkillSelected(sender, e);
        }
	}
}
