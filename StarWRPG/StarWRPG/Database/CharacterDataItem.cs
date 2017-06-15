using Newtonsoft.Json;
using SQLite;
using StarWRPG.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG
{
    public class CharacterDataItem
    {
        [PrimaryKey, AutoIncrement]
        public int ID { get; set; }
        public string CharacterAsJson { get; private set; }

        JsonSerializerSettings serializerSettings;

        public CharacterDataItem() : this(null) { }

        public CharacterDataItem(FaDCharacter character)
        {
            serializerSettings = new JsonSerializerSettings
            {
                TypeNameHandling = TypeNameHandling.Auto,
                ObjectCreationHandling = ObjectCreationHandling.Replace
            };

            if (character != null)
                CharacterToJson(character);
        }

        public void CharacterToJson(FaDCharacter character)
        {
            CharacterAsJson = JsonConvert.SerializeObject(character, serializerSettings);
        }

        public FaDCharacter GetCharacter()
        {
            try
            {
                return JsonConvert.DeserializeObject<FaDCharacter>(CharacterAsJson, serializerSettings);
            }
            catch (Exception e)
            {
                Debug.WriteLine(e.StackTrace);
                Debug.WriteLine(e.Source);
                Debug.WriteLine(e.Message);
                throw (e);
            }
        }
    }
}
