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

[assembly: ExportRenderer(typeof(ContentPage), typeof(CustomContentPageRenderer))]
namespace StarWRPG.iOS
{
    public class CustomContentPageRenderer : PageRenderer
    {
        protected override void OnElementChanged(VisualElementChangedEventArgs e)
        {
            base.OnElementChanged(e);

            if (e.NewElement != null)
            {
                var page = e.NewElement as Page;
                NavigationPage.SetBackButtonTitle(page, "");

                foreach (var toolbarItem in page.ToolbarItems ?? Enumerable.Empty<ToolbarItem>())
                {
                    if (toolbarItem.Text.Contains("|"))
                        return;

                    toolbarItem.Text = "| " + toolbarItem.Text;
                }
            }
        }
    }
}