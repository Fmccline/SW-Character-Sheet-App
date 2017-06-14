using Xamarin.Forms;
using StarWRPG.Models;
using StarWRPG.Views;
using System.Collections.ObjectModel;
using StarWRPG.ViewModels;
using System.Diagnostics;

namespace StarWRPG
{
    public partial class App : Application
    {
        FaDCharacter fadCharacter;
        static CharacterDatabase characterDatabase;
        public static CharacterDatabase CharacterDatabase
        {
            get
            {
                if (characterDatabase == null)
                {
                    characterDatabase = new CharacterDatabase(DependencyService.Get<IFileHelper>().GetLocalFilePath("CharacterSQLite.db3"));
                }
                return characterDatabase;
            }
        }
        public static ViewModelFactory ViewModelFactory { get; private set; }


        public App()
        {
            InitializeComponent();

            fadCharacter = createCharacter();
            ViewModelFactory = new ViewModelFactory(fadCharacter);

            //MainPage = new FaDMainDetailPage();
            MainPage = new MainMasterDetailPage();
        }

        FaDCharacter createCharacter()
        {
            var inventory = new Inventory();
            inventory.Add(new Item { Name = "Stimpack", Description = "Add 4 health" });
            inventory.Add(new Weapon { Skill = "Ranged (light)", Name = "Blaster Pistol", Damage = 6, Crit = 3 });
            inventory.Add(new Armor { Name = "Concealed Robes", RangedDefense = 1, MeleeDefense = 2, Soak = 2 });

            return new FaDCharacter(10, 12)
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
                Inventory = inventory,
            };
        }

		protected override void OnStart()
		{
			// Handle when your app starts
		}

		protected override void OnSleep()
		{

        }

        protected override void OnResume()
		{

        }
	}
}
