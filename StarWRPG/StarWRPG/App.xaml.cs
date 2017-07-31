using Xamarin.Forms;
using StarWRPG.Models;
using StarWRPG.Views;
using System.Collections.ObjectModel;
using StarWRPG.ViewModels;
using System.Diagnostics;
using Newtonsoft.Json;
using System;

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
            try
            {
                InitializeComponent();
                SetDefaultTheme();
                var navPage = new NavigationPage(new MainPage());
                navPage.SetDynamicResource(NavigationPage.BarBackgroundColorProperty, "TitleBackgroundColor");
                navPage.SetDynamicResource(NavigationPage.BarTextColorProperty, "TitleTextColor");

                MainPage = navPage;
            }
            catch (Exception e)
            {
                Debug.WriteLine(e.StackTrace);
                Debug.WriteLine(e.Source);
                Debug.WriteLine(e.Message);
            }

            //CharacterDatabase.DeleteAllItems();
        }

        public static void SetDefaultTheme()
        {
            //Current.Resources["BackgroundColor"] = Color.FromHex("#F1F1D4");
            //Current.Resources["TextColor"] = Color.Black;
            //Current.Resources["ButtonColor"] = Color.LightGray;
            //Current.Resources["ButtonTextColor"] = Color.Black;
            //Current.Resources["TitleTextColor"] = Color.Yellow;
            //Current.Resources["TitleBackgroundColor"] = Color.Black;
            Current.Resources["RegularFontName"] = Current.Resources["CamingoCodeRegular"];
            Current.Resources["BoldFontName"] = Current.Resources["CamingoCodeBold"];

            Current.Resources["BackgroundColor"] = Color.LightBlue;
            Current.Resources["TextColor"] = Color.DarkRed;
            Current.Resources["ButtonColor"] = Color.Black;
            Current.Resources["ButtonTextColor"] = Color.White;
            Current.Resources["TitleTextColor"] = Color.Yellow;
            Current.Resources["TitleBackgroundColor"] = Color.Black;
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
