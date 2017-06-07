using StarWRPG.Models;
using StarWRPG.ViewModels;
using Xamarin.Forms;

namespace StarWRPG.Views
{
	public partial class FaDCharacterDetailsPage : TabbedPage
	{
		public FaDCharacterDetailsPage(FaDCharacter FaDCharacter)
		{
			InitializeComponent();

			BindingContext = new FaDCharacterViewModel(FaDCharacter);
		}
	}
}
