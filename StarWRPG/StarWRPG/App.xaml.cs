using Xamarin.Forms;

namespace StarWRPG
{
	public partial class App : Application
	{
		public App()
		{
			InitializeComponent();

			FaDCharacter FaDCharacter = new FaDCharacter(10,12)
			{
				Name = "Randy Randall",
				Background = "Randy grew up on a farm.",
				Description = "Tall, slender guy with short black hair.",
				Species = "Human",
				Career = "Consular",
				SpecializationTrees = "Makashi Duelist",
				ForceRating = 1,
				SoakValue = 3,
			};

			MainPage = new FaDCharacterDetailsPage(FaDCharacter);
		}

		protected override void OnStart()
		{
			// Handle when your app starts
		}

		protected override void OnSleep()
		{
			// Handle when your app sleeps
		}

		protected override void OnResume()
		{
			// Handle when your app resumes
		}
	}
}
