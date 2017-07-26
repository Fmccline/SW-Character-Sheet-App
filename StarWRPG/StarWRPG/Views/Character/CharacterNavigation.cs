using StarWRPG.Controls;
using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace StarWRPG.Views
{
    public abstract class CharacterNavigation
    {
        public BasePage DefaultPage { get { return pages.First(); } }
        protected List<BasePage> pages;
        protected FFGCharacterViewModel ffgCharacterViewModel;

        public CharacterNavigation(FFGCharacterViewModel character)
        {
            ffgCharacterViewModel = character;

            pages = InitializePages();

            foreach (var page in pages)
            {
                page.AddToolBarItems(GetToolbarItems(page));
                page.AddPageSelection(pages);
            }
        }

        public Page GetPageByTitle(string title)
        {
            foreach (var page in pages)
            {
                if (page.Title.Equals(title))
                {
                    return page;
                }
            }
            throw new Exception("An error occured: Page not found.");
        }

        protected abstract List<ToolbarItem> GetToolbarItems(BasePage page);
        protected abstract List<BasePage> InitializePages();
    }
}
