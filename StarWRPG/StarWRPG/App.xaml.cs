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
                GetUserSettings();
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

        public static void GetUserSettings()
        {
            GetUserSettingFonts();
            GetUserSettingColors();
        }

        public static void GetUserSettingColors()
        {
            Current.Resources["BackgroundColor"] = UserSettings.BackgroundColor;
            Current.Resources["TextColor"] = UserSettings.TextColor;
            Current.Resources["ButtonColor"] = UserSettings.ButtonColor;
            Current.Resources["ButtonTextColor"] = UserSettings.ButtonTextColor;
            Current.Resources["TitleTextColor"] = UserSettings.TitleTextColor;
            Current.Resources["TitleBackgroundColor"] = UserSettings.TitleBackgroundColor;
        }

        public static void GetUserSettingFonts()
        {
            Current.Resources["RegularFontName"] = UserSettings.RegularFontFilePath;
            Current.Resources["BoldFontName"] = UserSettings.BoldFontFilePath;

            Current.Resources["DefaultFontSize"] = UserSettings.RegularFontSize;
            Current.Resources["MediumFontSize"] = UserSettings.MediumFontSize;
            Current.Resources["LargeFontSize"] = UserSettings.LargeFontSize;
        }

        protected override void OnStart()
        {

        }

        protected override void OnSleep()
        {

        }

        protected override void OnResume()
        {

        }
    }
}
