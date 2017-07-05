using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;

namespace StarWRPG.Models
{
    public class FFGCharacter
    {
        public int ID { get; set; }

        public string Background { get; set; }
        public string Career { get; set; }
        public string Description { get; set; }
        public string EmotionalStrengths { get; set; }
        public string EmotionalWeaknesses { get; set; }
        public string Motivation { get; set; }
        public string Name { get; set; }
        public string SpecializationTrees { get; set; }
        public string Species { get; set; }

        public uint Conflict { get; set; }
        public uint Contribution { get; set; }
        public uint CurrentStrain { get; set; }
        public uint CurrentWounds { get; set; }
        public uint ForceRating { get; set; }
        public uint MaxWounds { get; set; }
        public uint MaxStrain { get; set; }
        public uint MeleeDefense { get; set; }
        public uint Morality { get; set; }
        public uint RangedDefense { get; set; }
        public uint SoakValue { get; set; }
        public uint TotalDuty { get; set; }

        public Characteristics Characteristics { get; set; }

        public ObservableCollection<CharacterMotivationBase> Motivations { get; set; }
        public ObservableCollection<CriticalInjury> CriticalInjuries { get; set; }
        public ObservableCollection<Skill> Skills { get; set; }
        public ObservableCollection<Talent> Talents { get; set; }

        public Inventory Inventory { get; set; }
        public Experience XP { get; set; }

        public FFGCharacter()
        {
            Background = "";
            Career = "";
            Description = "";
            EmotionalStrengths = "";
            EmotionalWeaknesses = "";
            Motivation = "";
            Name = "";
            SpecializationTrees = "";
            Species = "";

            Characteristics = new Characteristics();
            CriticalInjuries = new ObservableCollection<CriticalInjury>();
            Inventory = new Inventory();
            Motivations = new ObservableCollection<CharacterMotivationBase>();
            //{
            //    new CharacterDuty(),
            //    new CharacterMotivation(),
            //    new CharacterEmotionalStrengths(),
            //    new CharacterEmotionalWeaknesses(),
            //    new CharacterDuty(),
            //    new CharacterDuty(),
            //    new CharacterObligation(),
            //    new CharacterObligation(),
            //};
            Talents = new ObservableCollection<Talent>();
            XP = new Experience();

            InitializeSkills();
        }

        void InitializeSkills()
        {
            var Intellect = Characteristics.Intellect;
            var Brawn = Characteristics.Brawn;
            Skills = new ObservableCollection<Skill>
            {
                new AstrogationSkill(Intellect),
                new AthleticsSkill(Brawn),
                new LightsaberSkill(Brawn),
            };
        }
    }
}
