using StarWRPG.Models;
using StarWRPG.ViewModels;
using Xamarin.Forms;

namespace StarWRPG.Views
{
	public partial class FaDCharacterDetailsPage : TabbedPage
	{
        FaDCharacterViewModel fadCharacterViewModel;

		public FaDCharacterDetailsPage(FaDCharacter character)
		{
			InitializeComponent();
            fadCharacterViewModel = new FaDCharacterViewModel(character);
            BindingContext = fadCharacterViewModel;

            Children.Add(new FaDBasicInfoPage(character));
            Children.Add(new FaDStatsPage(character));
		}
	}
}
