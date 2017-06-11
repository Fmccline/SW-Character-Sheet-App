using StarWRPG.Models;
using StarWRPG.ViewModels;
using Xamarin.Forms;

namespace StarWRPG.Views
{
	public partial class FaDCharacterDetailsPage : TabbedPage
	{
        FaDCharacterViewModel fadCharacterViewModel;

		public FaDCharacterDetailsPage()
		{
			InitializeComponent();
            fadCharacterViewModel = App.ViewModelFactory.FaDCharacterViewModel();
            BindingContext = fadCharacterViewModel;

            Children.Add(new FaDBasicInfoPage());
            Children.Add(new FaDStatsPage());
            Children.Add(new FaDInventoryPage());
		}
	}
}
