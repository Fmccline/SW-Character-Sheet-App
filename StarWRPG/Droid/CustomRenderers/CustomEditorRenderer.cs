using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Xamarin.Forms;
using StarWRPG.Views;
using System.Diagnostics;
using System.Threading.Tasks;
using Xamarin.Forms.Platform.Android;
using StarWRPG.Droid;

[assembly: ExportRenderer(typeof(Editor), typeof(CustomEditorRenderer))]
namespace StarWRPG.Droid
{
    public class CustomEditorRenderer : EditorRenderer
    {
        protected override void OnElementChanged(ElementChangedEventArgs<Editor> e)
        {
            base.OnElementChanged(e);
            Control?.SetBackgroundColor(Android.Graphics.Color.Transparent);

            if (Control != null && String.IsNullOrWhiteSpace(Control.Text))
            {
                string placeholder = "Input text here...";
                Control.SetText(placeholder.ToCharArray(), 0, placeholder.Length);
            }
        }
    }
}