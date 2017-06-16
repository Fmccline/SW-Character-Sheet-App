using StarWRPG.ViewModels;
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
    public partial class MainMasterDetailPage : MasterDetailPage
    {
        ObservableCollection<MasterPageItem> Pages { get; set; }

        public MainMasterDetailPage()
        {
            InitializeComponent();

            Pages = new ObservableCollection<MasterPageItem>
            {
                new MasterPageItem { Title="Character Details", TargetType=typeof(FaDMainDetailPage)},
                new MasterPageItem { Title="Chacter Creation", TargetType=typeof(CharacterBasicInfoEntryPage)},
            };

            pagesListView.ItemsSource = Pages;
        }

        void OnPageSelected(object sender, SelectedItemChangedEventArgs e)
        {
            var page = e.SelectedItem as MasterPageItem;
            if (page != null)
            {
                try
                {
                    Detail = new NavigationPage((Page)Activator.CreateInstance(page.TargetType, new FaDCharacterViewModel()));
                }
                catch (Exception ex)
                {
                    Debug.WriteLine(ex.StackTrace);
                    Debug.WriteLine(ex.Message);
                }
                pagesListView.SelectedItem = null;
                IsPresented = false;
            }
        }
    }
}