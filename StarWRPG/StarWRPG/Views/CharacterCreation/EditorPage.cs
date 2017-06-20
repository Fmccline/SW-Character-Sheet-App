using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;

using Xamarin.Forms;

namespace StarWRPG.Views
{
    public class EditorPage : ContentPage
    {
        Editor editor;
        string binding;

        public EditorPage(string title, string binding, FaDCharacterViewModel characterViewModel)
        {
            BindingContext = characterViewModel;
            this.binding = binding;

            Label titleLabel = new Label
            {
                Text = title,
                FontSize = Device.GetNamedSize(NamedSize.Large, typeof(Label)),
                FontAttributes = FontAttributes.Bold,
                HorizontalOptions = LayoutOptions.Center,
            };

            editor = new Editor();
            editor.SetBinding(Editor.TextProperty, binding, BindingMode.OneWay);
            editor.VerticalOptions = LayoutOptions.FillAndExpand;

            Button accept = new Button
            {
                Text = "Accept",
                HorizontalOptions = LayoutOptions.CenterAndExpand,
            };
            accept.Clicked += AcceptClickedAsync;

            Button cancel = new Button
            {
                Text = "Cancel",
                HorizontalOptions = LayoutOptions.CenterAndExpand,
            };
            cancel.Clicked += CancelClickedAsync;

            Content = new StackLayout
            {
                Children =
                {
                    titleLabel,
                    editor,
                    new StackLayout
                    {
                        Orientation = StackOrientation.Horizontal,
                        Children =
                        {
                            cancel,
                            accept,
                        }
                    },
                }
            };
        }

        private async void CancelClickedAsync(object sender, EventArgs e)
        {
            var answer = await DisplayAlert("Are you sure?", "Your changes will not be saved.", "Yes", "No");
            if (answer)
            {
                await Navigation.PopModalAsync();
            }
        }

        private async void AcceptClickedAsync(object sender, EventArgs e)
        {
            editor.SetBinding(Editor.TextProperty, binding, BindingMode.OneWayToSource);
            await Navigation.PopModalAsync();
        }
    }
}