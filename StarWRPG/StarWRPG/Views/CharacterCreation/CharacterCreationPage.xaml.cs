using StarWRPG.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace StarWRPG.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class CharacterCreationPage : ContentPage
    {
        public CharacterCreationPage()
        {
            InitializeComponent();
        }

        protected override async void OnAppearing()
        {
            CharactersListView.ItemsSource = await App.CharacterDatabase.GetCharactersAsync();
        }

        async void AddNewCharacter(object sender, EventArgs e)
        {
            var list = await App.CharacterDatabase.GetItemsAsync();
            int version = list.Count;

            FaDCharacter character = new FaDCharacter
            {
                Name = "Randy." + version,
            };

            try
            {
                await App.CharacterDatabase.SaveItemAsync(new CharacterDataItem(character));
            }
            catch (Exception ex)
            {
                Debug.WriteLine("ex");
                Debug.WriteLine(ex.StackTrace);
                Debug.WriteLine(ex.Source);
                Debug.WriteLine(ex.Message);
                Debug.WriteLine("");
            }
        }
    }
}