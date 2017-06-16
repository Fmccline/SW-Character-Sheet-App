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
        public EditorPage(string title, string binding, FaDCharacterViewModel characterViewModel)
        {
            BindingContext = characterViewModel;

            Label titleLabel = new Label
            {
                Text = title,
                FontSize = Device.GetNamedSize(NamedSize.Large, typeof(Label)),
                FontAttributes = FontAttributes.Bold,
                HorizontalOptions = LayoutOptions.Center,
            };

            Editor editor = new Editor();
            editor.SetBinding(Editor.TextProperty, binding);
            editor.VerticalOptions = LayoutOptions.FillAndExpand;

            Button accept = new Button
            {
                Text = "Accept",
                HorizontalOptions = LayoutOptions.Center,
            };
            accept.Clicked += AcceptClickedAsync;

            Content = new StackLayout
            {
                Children =
                {
                    titleLabel,
                    editor,
                    accept,
                }
            };
        }

        private async void AcceptClickedAsync(object sender, EventArgs e)
        {
            try
            {
                await Navigation.PopAsync();
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.StackTrace);
                Debug.WriteLine(ex.Message);
            }
        }
    }
}