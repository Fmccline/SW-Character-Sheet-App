﻿using StarWRPG.ViewModels;
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
                AddToolbarItems(page);
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

        protected void AddToolbarItems(BasePage page)
        {
            List<ToolbarItem> toolbarItems = InitializeToolbarItems(page);
            foreach (var toolbarItem in toolbarItems)
            {
                page.AddToolBarItem(toolbarItem);
            }
        }

        protected abstract List<ToolbarItem> InitializeToolbarItems(BasePage page);
        protected abstract List<BasePage> InitializePages();
    }
}
