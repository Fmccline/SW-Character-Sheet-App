using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Foundation;
using UIKit;
using Xamarin.Forms.Platform.iOS;
using Xamarin.Forms;
using StarWRPG.Views;
using StarWRPG.iOS;
using System.Diagnostics;
using System.Threading.Tasks;

[assembly: ExportRenderer(typeof(CustomSearchBar), typeof(CustomSearchBarRenderer))]
namespace StarWRPG.iOS
{
    public class CustomSearchBarRenderer : SearchBarRenderer
    {
        protected override void OnElementChanged(ElementChangedEventArgs<SearchBar> e)
        {
            base.OnElementChanged(e);

            if (Control != null)
            {
                Control.SearchBarStyle = UISearchBarStyle.Minimal;
                Control.ShowsCancelButton = false;
                AddCancelButton();
            }
        }

        private void AddCancelButton()
        {
            var toolbar = new UIToolbar(new CoreGraphics.CGRect(0.0f, 0.0f, Control.Frame.Size.Width, 44.0f))
            {
                Items = new[]
                {
                    new UIBarButtonItem(UIBarButtonSystemItem.FlexibleSpace),
                    new UIBarButtonItem(UIBarButtonSystemItem.Cancel, delegate { Control.ResignFirstResponder(); })
                }
            };
            Control.InputAccessoryView = toolbar;
        }
    }
}