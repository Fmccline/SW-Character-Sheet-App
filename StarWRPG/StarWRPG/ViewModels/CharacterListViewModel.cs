using StarWRPG.Controls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace StarWRPG.ViewModels
{
    /* Intent
     *      For displaying a list of all the characters from App.CharacterDatabase
     */
    public class CharacterListViewModel : ViewModelBase, ISearchable
    {
        public ICommand SearchCommand { get { return new Command<String>(Search); } }
        public ICommand DefaultSortCommand { get { return new Command(DefaultSort); } }

        List<FFGCharacterViewModel> characters;
        public List<FFGCharacterViewModel> Characters
        {
            get { return characters; }
            set
            {
                characters = value;
                OnPropertyChanged();
            }
        }

        public CharacterListViewModel()
        {
            var task = Task.Run(async () =>
            {
                Characters = await GetCharactersAsync();
            });
        }

        public async Task<List<FFGCharacterViewModel>> GetCharactersAsync()
        {
            return await App.CharacterDatabase.GetCharacterViewModelsAsync();
        }

        public void DefaultSort()
        {
            List<FFGCharacterViewModel> result = Characters.OrderBy(x => x.TotalXP).ToList();
            Characters = result;
        }

        public void Search(string searchText)
        {
            searchText = searchText.ToLower();
            List<FFGCharacterViewModel> result;
            if (searchText == null)
            {
                DefaultSort();
                return;
            }
            else
            {
                result = Characters.OrderByDescending(x => x.Name.ToLower().Contains(searchText)).ToList();
            }
            Characters = result;
        }
    }
}
