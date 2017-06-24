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

        public async Task<List<FaDCharacterViewModel>> GetCharacterViewModelsAsync()
        {
            var characters = new List<FaDCharacterViewModel>();
            var characterDataItems = await database.Table<CharacterDataItem>().ToListAsync();
            if (characterDataItems.Count > 0)
            {
                foreach (CharacterDataItem character in characterDataItems)
                {
                    characters.Add(new FaDCharacterViewModel(character.GetCharacter()));
                }
            }
            return characters;
        }

        public Task<List<CharacterDataItem>> GetItemsAsync()
        {
            return database.Table<CharacterDataItem>().ToListAsync();
        }

        public Task<CharacterDataItem> GetItemAsync(int id)
        {
            return database.Table<CharacterDataItem>().Where(i => i.ID == id).FirstOrDefaultAsync();
        }

        public Task<int> SaveItemAsync(CharacterDataItem item)
        {
            if (item.ID != 0)
            {
                return database.UpdateAsync(item);
            }
            else
            {
                return database.InsertAsync(item);
            }
        }

        public Task<int> DeleteItemAsync(CharacterDataItem item)
        {
            return database.DeleteAsync(item);
        }

    }
}
