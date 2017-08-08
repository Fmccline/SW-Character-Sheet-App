using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.Helpers
{
    public class SingleClick
    {
        Action<object, EventArgs> clicked;
        bool CanExecute;
        int delay;

        public SingleClick(Action<object, EventArgs> clicked, int delay = 500)
        {
            this.clicked = clicked;
            this.delay = delay;
            CanExecute = true;
        }

        public async void Click(object s, EventArgs e)
        {
            if (CanExecute)
            {
                CanExecute = false;
                clicked(s, e);
            }
            else
            {
                Debug.WriteLine("CanExecute is false right now.");
            }
            await Task.Run(async () =>
            {
                await Task.Delay(delay);
                CanExecute = true;
            });
        }
    }
}
