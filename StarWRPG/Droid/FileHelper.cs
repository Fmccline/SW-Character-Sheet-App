using StarWRPG.Droid;
using System;
using System.IO;
using Xamarin.Forms;

[assembly: Dependency(typeof(FileHelper))]
namespace StarWRPG.Droid
{
    public class FileHelper : IFileHelper
    {
        public string GetLocalFilePath(string filename)
        {
            string path = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            return Path.Combine(path, filename);
        }
    }
}