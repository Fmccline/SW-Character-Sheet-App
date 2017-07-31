using StarWRPG.Views;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace StarWRPG.Controls
{
    public class SettingsToolbarItem : ToolbarItem
    {
        Page currentPage;

        public SettingsToolbarItem(Page currentPage)
        {
            this.currentPage = currentPage;
            Text = "Settings";
            Clicked += SettingsClickedAsync;
        }

        private async void SettingsClickedAsync(object sender, EventArgs e)
        {
            await currentPage.Navigation.PushAsync(new SettingsPage());
        }
    }
}
