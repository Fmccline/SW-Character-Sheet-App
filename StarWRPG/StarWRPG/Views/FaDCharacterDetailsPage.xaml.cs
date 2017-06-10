using StarWRPG.Models;
using StarWRPG.ViewModels;
using Xamarin.Forms;

namespace StarWRPG.Views
{
	public partial class FaDCharacterDetailsPage : TabbedPage
	{
        FaDCharacterViewModel fadCharacterViewModel;

		public FaDCharacterDetailsPage(FaDCharacterViewModel characterViewModel)
		{
			InitializeComponent();
            fadCharacterViewModel = characterViewModel;
            BindingContext = fadCharacterViewModel;

            Children.Add(new FaDBasicInfoPage(fadCharacterViewModel));
            Children.Add(new FaDStatsPage(fadCharacterViewModel));
            Children.Add(new FaDInventoryPage(new InventoryViewModel(fadCharacterViewModel.Inventory)));
		}
	}
}
