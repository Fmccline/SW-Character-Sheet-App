using StarWRPG.Helpers;
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
            Style = (Style)Application.Current.Resources["PageStyle"];
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            // When the user exits the app, save the character
            MessagingCenter.Subscribe<App>(this, MessagingCenterMessages.OnAppSleep,
                async (sender) =>
                {
                    await App.CharacterDatabase.SaveCharacterAsync(ffgCharacterViewModel);
                });
        }

        protected override void OnDisappearing()
        {
            base.OnDisappearing();
            MessagingCenter.Unsubscribe<App>(this, MessagingCenterMessages.OnAppSleep);
        }

        public void AddPageSelection(List<BasePage> pages)
        {
            switch (Device.RuntimePlatform)
            {
                case Device.Android:
                    mainStackLayout.Children.Insert(0, new PageSelectionLayout(this, pages));
                    break;
                case Device.iOS:
                    mainStackLayout.Children.Add(new PageSelectionLayout(this, pages));
                    break;
            }
        }

        public void AddToolBarItems(List<ToolbarItem> items)
        {
            foreach (var item in items)
            {
                ToolbarItems.Add(item);
            }
        }

        protected override bool OnBackButtonPressed()
        {
            if (ffgCharacterViewModel.Name.Equals(""))
            {
                ffgCharacterViewModel.Name = "Insert Name Here";
            }

            var task = Task.Run(async () =>
            {
                await App.CharacterDatabase.SaveCharacterAsync(ffgCharacterViewModel);
            });
            return base.OnBackButtonPressed();
        }
    }
}