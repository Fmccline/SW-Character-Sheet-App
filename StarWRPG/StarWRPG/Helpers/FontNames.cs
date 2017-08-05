using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace StarWRPG
{
    // Holds all of the fonts stored in the application's resource dictionary
    // Each property returns the key in the resource dictionary to the specified font
    public class FontNames
    {
        public static readonly string Andada = "Andada";
        public static readonly string CamingoCode = "CamingoCode";
        public static readonly string Enigmatic = "Enigmatic";
        public static readonly string GreyscaleBasic = "GreyscaleBasic";
        public static readonly string HKGrotesk = "HKGrotesk";
        public static readonly string Neuton = "Neuton";
        
        public static string FilePathToFont(string fontName, bool isBold=false)
        {
            switch (Device.RuntimePlatform)
            {
                case Device.iOS:
                    return fontName;
                case Device.Android:
                    return fontName + ((isBold) ? "Bold" : "") + OTForTTF(fontName) + $"#{fontName}";
            }
            return null;
        }

        private static string OTForTTF(string fontName)
        {
            const string OTF = ".otf";
            const string TTF = ".ttf";

            if (fontName == Andada || fontName == HKGrotesk)
            {
                return OTF;
            }
            else
            {
                return TTF;
            }
        }
    }
}
