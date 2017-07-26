using System;
using System.Collections.Generic;
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
        }

        private void InitializePageTitles()
        {
            pageTitles = new string[pages.Count];
            for (int i = 0; i < pages.Count; ++i)
            {
                pageTitles[i] = pages[i].Title;
            }
        }

        private async Task InsertPageBeforeAndPop(Page page)
        {
            var pageToBeRemoved = currentPage.Navigation.NavigationStack.Last();
            currentPage.Navigation.InsertPageBefore(page, pageToBeRemoved);
            await currentPage.Navigation.PopAsync();
        }

        private async void PreviousPageAsync(object sender, EventArgs e)
        {
            int indexOfCurrentPage = pages.IndexOf(currentPage);
            int indexOfPreviousPage = (currentPage == pages.First()) ? pages.Count - 1 : indexOfCurrentPage - 1;

            await InsertPageBeforeAndPop(pages[indexOfPreviousPage]);
        }

        private async void SelectPageAsync(object sender, EventArgs e)
        {
            var pageSelected = await currentPage.DisplayActionSheet("Character Details Selection", "Cancel", null, pageTitles);
            foreach (var page in pages)
            {
                if (page.Title.Equals(pageSelected) && !page.Title.Equals(currentPage.Title))
                {
                    await InsertPageBeforeAndPop(page);
                }
            }
        }

        private async void NextPageAsync(object sender, EventArgs e)
        {
            int indexOfCurrentPage = pages.IndexOf(currentPage);
            int indexOfNextPage = (currentPage == pages.Last()) ? 0 : indexOfCurrentPage + 1;

            await InsertPageBeforeAndPop(pages[indexOfNextPage]);
        }
    }
}