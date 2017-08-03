using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace StarWRPG.ViewModels
{
    public abstract class ColorViewModel : ViewModelBase
    {
        Color customColor;
        double red;
        double green;
        double blue;
       
        public Color CustomColor
        {
            get { return customColor; }
            set
            {
                customColor = value;
                OnPropertyChanged();
            }
        }
        public double Red
        {
            get { return red; }
            set
            {
                red = value;
                SetCustomColor();
                OnPropertyChanged();
            }
        }
        public double Green
        {
            get { return green; }
            set
            {
                green = value;
                SetCustomColor();
                OnPropertyChanged();
            }
        }
        public double Blue
        {
            get { return blue; }
            set
            {
                blue = value;
                SetCustomColor();
                OnPropertyChanged();
            }
        }


        public ColorViewModel()
        {
            Red = 255 / 2;
            Green = 255 / 2;
            Blue = 255 / 2;
        }

        public abstract void SaveColor();

        private void SetCustomColor()
        {
            CustomColor = Color.FromRgb(red / 255, green / 255, blue / 255);
        }
    }
}
