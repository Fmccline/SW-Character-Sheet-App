using Xamarin.Forms;
using StarWRPG.Models;
using StarWRPG.Views;

namespace StarWRPG
{
	public partial class App : Application
	{
		public App()
		{
			InitializeComponent();

            FaDCharacter FaDCharacter = new FaDCharacter(10, 12)
            {
                Name = "Randy Randall",
                Background = "Randy grew up on a farm.",
                Description = "Tall, slender guy with short black hair.",
                Species = "Human",
                Career = "Consular",
                SpecializationTrees = "Makashi Duelist",
                ForceRating = 1,
                SoakValue = 3,
                XP = new Experience(100),
                Motivation = "Nothing: Randy just wants to live his life.",
                EmotionalStrengths = "Selfless",
                EmotionalWeaknesses = "Reckless",
                Conflict = 0,
                Morality = 50,
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
