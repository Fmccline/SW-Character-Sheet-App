using SQLite;
using StarWRPG.Models;
using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG
{
    public class CharacterDatabase
    {
        SQLiteAsyncConnection database;

        public CharacterDatabase(string dbPath)
        {
            database = new SQLiteAsyncConnection(dbPath);
            database.CreateTableAsync<CharacterDataItem>().Wait();
        }

        // TODO: Remove this method eventually
        public async void DeleteAllItems()
        {
            var items = await database.Table<CharacterDataItem>().ToListAsync();
            foreach (var item in items)
            {
                await database.DeleteAsync(item);
            }
        }

        public async Task<List<FFGCharacterViewModel>> GetCharacterViewModelsAsync()
        {
            var characters = new List<FFGCharacterViewModel>();
            var characterDataItems = await database.Table<CharacterDataItem>().ToListAsync();
            if (characterDataItems.Count > 0)
            {
                foreach (CharacterDataItem character in characterDataItems)
                {
                    characters.Add(new FFGCharacterViewModel(character.GetCharacter()));
                }
            }
            return characters;
        }

        public Task<int> SaveCharacterDataItemAsync(CharacterDataItem character)
        {
            if (character.ID != 0)
            {
                return database.UpdateAsync(character);
            }
            else
            {
                return database.InsertAsync(character);
            }
        }

        public async Task SaveCharacterAsync(FFGCharacterViewModel characterViewModel)
        {
            var character = characterViewModel.FFGCharacter;
            var dataItem = new CharacterDataItem(character) { ID = character.ID };
            await SaveCharacterDataItemAsync(dataItem);
        }

        public Task<int> DeleteCharacterAsync(CharacterDataItem item)
        {
            return database.DeleteAsync(item);
        }

    }
}
