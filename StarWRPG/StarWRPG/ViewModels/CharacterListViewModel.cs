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

        bool charactersIsEmpty;
        bool charactersIsNotEmpty;

        public bool CharactersIsEmpty
        {
            get { return (charactersIsEmpty); }
            set
            {
                charactersIsEmpty = value;
                OnPropertyChanged();
            }
        }
        public bool CharactersIsNotEmpty
        {
            get { return (charactersIsNotEmpty); }
            set
            {
                charactersIsNotEmpty = value;
                OnPropertyChanged();
            }
        }

        public CharacterListViewModel()
        {
            SetCharactersIsEmpty(true);
        }

        public async Task<List<FFGCharacterViewModel>> GetCharactersAsync()
        {
            Characters = await App.CharacterDatabase.GetCharacterViewModelsAsync();

            bool isEmpty = (Characters.Count == 0) ? true : false;
            SetCharactersIsEmpty(isEmpty);

            return Characters;
        }

        private void SetCharactersIsEmpty(bool value)
        {
            CharactersIsEmpty = value;
            CharactersIsNotEmpty = !value;
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
