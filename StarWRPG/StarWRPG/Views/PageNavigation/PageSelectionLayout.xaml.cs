using StarWRPG.Helpers;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace StarWRPG.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PageSelectionLayout : ContentView
    {
        BasePage currentPage;
        List<BasePage> pages;
        string[] pageTitles;

        public PageSelectionLayout(BasePage currentPage, List<BasePage> pages)
        {
            InitializeComponent();
            this.currentPage = currentPage;
            this.pages = pages;

            InitializePageTitles();
            SetButtonsText();
            SetButtonsClicked();
        }

        private void SetButtonsClicked()
        {
            NextPageButton.Clicked += new SingleClick(GoToNextPage).Click;
            PreviousPageButton.Clicked += new SingleClick(GoToPreviousPage).Click;
            SelectPageButton.Clicked += new SingleClick(GoToSelectedPage).Click;
        }

        private void SetButtonsText()
        {
            string previousPageTitle = ToShortTitle(GetPreviousPage().Title);
            string nextPageTitle = ToShortTitle(GetNextPage().Title);

            PreviousPageButton.Text = "<-- " + previousPageTitle;
            NextPageButton.Text = nextPageTitle + " -->";
        }

        private string ToShortTitle(string title)
        {
            int maxLength = 6;
            if (title.Length <= maxLength)
            {
                return title;
            }
            else
            {
                return title.Substring(0, maxLength) + ".";
            }
        }

        private void InitializePageTitles()
        {
            pageTitles = new string[pages.Count];
            for (int i = 0; i < pages.Count; ++i)
            {
                pageTitles[i] = pages[i].Title;
            }
        }

        private BasePage GetNextPage()
        {
            int indexOfCurrentPage = pages.IndexOf(currentPage);
            int indexOfNextPage = (currentPage == pages.Last()) ? 0 : indexOfCurrentPage + 1;
            return pages[indexOfNextPage];
        }

        private BasePage GetPreviousPage()
        {
            int indexOfCurrentPage = pages.IndexOf(currentPage);
            int indexOfPreviousPage = (currentPage == pages.First()) ? pages.Count - 1 : indexOfCurrentPage - 1;
            return pages[indexOfPreviousPage];
        }

        private async void PushPageAsync(Page page)
        {
            var navigation = currentPage.Navigation;
            try
            {
                if (navigation.NavigationStack.Contains(page))
                {
                    navigation.RemovePage(page);
                }
                await navigation.PushAsync(page, false);
            }
            catch (Exception)
            {
                await currentPage.DisplayAlert("Oops", "A Nerf Herding error occured! Hopefully that's the last of them.", "OK");
            }
        }

        private void GoToNextPage(object sender, EventArgs e)
        {
            var nextPage = GetNextPage();
            PushPageAsync(nextPage);
        }

        private void GoToPreviousPage(object sender, EventArgs e)
        {
            var previousPage = GetPreviousPage();
            PushPageAsync(previousPage);
        }

        private async void GoToSelectedPage(object sender, EventArgs e)
        {
            var pageSelected = await currentPage.DisplayActionSheet("Character Details Selection", "Cancel", null, pageTitles);
            foreach (var page in pages)
            {
                if (page.Title.Equals(pageSelected) && !page.Title.Equals(currentPage.Title))
                {
                    PushPageAsync(page);
                }
            }
        }
    }
}