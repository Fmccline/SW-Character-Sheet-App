using Xamarin.Forms;
using StarWRPG.Models;
using StarWRPG.Views;
using System.Collections.ObjectModel;
using StarWRPG.ViewModels;
using System.Diagnostics;
using Newtonsoft.Json;

namespace StarWRPG
{
    public partial class App : Application
    {
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

        public App()
        {
            InitializeComponent();

            //CharacterDatabase.DeleteAllItems();
            var navPage = new NavigationPage(new MainPage());
            navPage.SetDynamicResource(NavigationPage.BarBackgroundColorProperty, "TitleBackgroundColor");
            navPage.SetDynamicResource(NavigationPage.BarTextColorProperty, "TitleTextColor");

            MainPage = navPage;
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
