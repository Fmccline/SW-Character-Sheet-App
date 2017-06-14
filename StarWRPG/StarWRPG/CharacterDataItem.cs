using Newtonsoft.Json;
using SQLite;
using StarWRPG.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG
{
    public class CharacterDataItem
    {
        [PrimaryKey]
        public uint ID { get; set; }
        private string CharacterAsJson { get; set; }

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
            return JsonConvert.DeserializeObject<FaDCharacter>(CharacterAsJson, serializerSettings);
        }
    }
}
