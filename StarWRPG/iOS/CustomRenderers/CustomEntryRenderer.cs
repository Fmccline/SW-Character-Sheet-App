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

[assembly: ExportRenderer(typeof(Entry), typeof(CustomEntryRenderer))]
namespace StarWRPG.iOS
{
    public class CustomEntryRenderer : EntryRenderer
    {
        protected override void OnElementChanged(ElementChangedEventArgs<Entry> e)
        {
            base.OnElementChanged(e);

            if (e.NewElement is Entry entry)
            {
                if (entry.Keyboard == Keyboard.Numeric)
                {
                    AddDoneButton();
                }
            }
        }

        private void AddDoneButton()
        {
            var toolbar = new UIToolbar(new CoreGraphics.CGRect(0.0f, 0.0f, Control.Frame.Size.Width, 44.0f))
            {
                Items = new[]
                {
                    new UIBarButtonItem(UIBarButtonSystemItem.FlexibleSpace),
                    new UIBarButtonItem(UIBarButtonSystemItem.Done, delegate { Control.ResignFirstResponder(); })
                }
            };
            Control.InputAccessoryView = toolbar;
        }
    }
}