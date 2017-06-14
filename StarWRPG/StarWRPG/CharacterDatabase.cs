using SQLite;
using StarWRPG.Models;
using System;
using System.Collections.Generic;
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
