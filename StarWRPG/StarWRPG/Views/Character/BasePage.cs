using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace StarWRPG.Views
{
    public abstract class BasePage : ContentPage
    {
        protected FFGCharacterViewModel ffgCharacterViewModel;
        protected abstract StackLayout mainStackLayout { get; }

        protected BasePage(FFGCharacterViewModel character)
        {
            ffgCharacterViewModel = character;
            NavigationPage.SetHasBackButton(this, false);
        }

        public void AddPageSelection(List<BasePage> pages)
        {
            mainStackLayout.Children.Insert(0, new PageSelectionLayout(this, pages));
        }

        public void AddToolBarItem(ToolbarItem item)
        {
            ToolbarItems.Add(item);
        }

        protected override bool OnBackButtonPressed()
        {
            if (ffgCharacterViewModel.Name.Equals(""))
            {
                ffgCharacterViewModel.Name = "No Name Nelly";
            }

            var task = Task.Run(async () =>
            {
                await App.CharacterDatabase.SaveCharacterAsync(ffgCharacterViewModel);
            });
            return base.OnBackButtonPressed();
        }
    }
}