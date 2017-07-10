using StarWRPG.ViewModels;
using StarWRPG.Views;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace StarWRPG.Controls
{
    public class CharacterDetailsToolbarItem : ToolbarItem
    {
        List<BasePage> pages;
        BasePage currentPage;
        string[] pageTitles;

        public CharacterDetailsToolbarItem(List<BasePage> pages, BasePage currentPage)
        {
            this.pages = pages;
            this.currentPage = currentPage;

            pageTitles = new string[pages.Count];
            for (int i = 0; i < pages.Count; ++i)
            {
                pageTitles[i] = pages[i].Title;
            }
            Text = "Select";
            Clicked += PageSelectionButtonClickedAsync;
        }

        private async void PageSelectionButtonClickedAsync(object sender, EventArgs e)
        {
            var pageSelected = await currentPage.DisplayActionSheet("Character Details", "Cancel", null, pageTitles);
            foreach (var page in pages)
            {
                if (page.Title.Equals(pageSelected) && !page.Title.Equals(currentPage.Title))
                {
                    var previousPage = currentPage.Navigation.NavigationStack.Last();
                    currentPage.Navigation.InsertPageBefore(page, previousPage);
                    await currentPage.Navigation.PopAsync();
                }
            }
        }
    }
}
