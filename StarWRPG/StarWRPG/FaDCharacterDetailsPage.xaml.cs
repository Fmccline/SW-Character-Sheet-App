using Xamarin.Forms;

namespace StarWRPG
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
