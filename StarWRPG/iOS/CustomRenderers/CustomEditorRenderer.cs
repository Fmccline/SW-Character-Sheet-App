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

[assembly: ExportRenderer(typeof(Editor), typeof(CustomEditorRenderer))]
namespace StarWRPG.iOS
{
    public class CustomEditorRenderer : EditorRenderer
    {
        protected override void OnElementChanged(ElementChangedEventArgs<Editor> e)
        {
            base.OnElementChanged(e);

            if (Control != null)
            {
                if (String.IsNullOrWhiteSpace(Control.Text))
                {
                    string placeholder = "Input text here...";
                    Control.Text = placeholder;
                }
                AddDoneButton();
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