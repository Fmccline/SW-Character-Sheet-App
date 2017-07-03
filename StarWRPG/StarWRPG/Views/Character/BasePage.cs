using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Xamarin.Forms;

namespace StarWRPG.Views
{
    public abstract class BasePage : ContentPage
    {
        protected abstract StackLayout mainStackLayout { get; }

        protected BasePage()
        {
            NavigationPage.SetHasBackButton(this, false);
        }

        public void AddToolBarItem(ToolbarItem item)
        {
            ToolbarItems.Add(item);
        }
    }
}