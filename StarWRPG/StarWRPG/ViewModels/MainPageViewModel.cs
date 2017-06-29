using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.ViewModels
{
    public class MainPageViewModel : ViewModelBase
    {
        List<FFGCharacterViewModel> characters;

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
        
        public MainPageViewModel()
        {
            SetCharactersIsEmpty(true);
        }

        public async Task<List<FFGCharacterViewModel>> GetCharacters()
        {
            characters = await App.CharacterDatabase.GetCharacterViewModelsAsync();

            bool isEmpty = (characters.Count == 0) ? true : false;
            SetCharactersIsEmpty(isEmpty);

            return characters;
        }

        private void SetCharactersIsEmpty(bool value)
        {
            CharactersIsEmpty = value;
            CharactersIsNotEmpty = !value;
        }

    }
}
