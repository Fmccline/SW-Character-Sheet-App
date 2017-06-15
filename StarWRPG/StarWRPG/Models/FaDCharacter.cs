using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;

namespace StarWRPG.Models
{
    public class FaDCharacter
    {
        // If any change happens here, change should also happen in the ViewModel!
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
        public uint CurrentStrain { get; set; }
        public uint CurrentWounds { get; set; }
        public uint ForceRating { get; set; }
        public uint MaxWounds { get; set; }
        public uint MaxStrain { get; set; }
        public uint MeleeDefense { get; set; }
        public uint Morality { get; set; }
        public uint RangedDefense { get; set; }
        public uint SoakValue { get; set; }

        public AgilityCharacteristic Agility { get; set; }
        public BrawnCharacteristic Brawn { get; set; }
        public CunningCharacteristic Cunning { get; set; }
        public IntellectCharacteristic Intellect { get; set; }
        public PresenceCharacteristic Presence { get; set; }
        public WillpowerCharacteristic Willpower { get; set; }

        public ObservableCollection<CriticalInjury> CriticalInjuries { get; set; }
        public ObservableCollection<Skill> Skills { get; set; }
        public ObservableCollection<Talent> Talents { get; set; }

        public Inventory Inventory { get; set; }
        public Experience XP { get; set; }

        public FaDCharacter()
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

            Conflict = 0;
            CurrentStrain = 0;
            CurrentWounds = 0;
            ForceRating = 0;
            MaxWounds = 0;
            MaxStrain = 0;
            MeleeDefense = 0;
            Morality = 0;
            RangedDefense = 0;
            SoakValue = 0;

            CriticalInjuries = new ObservableCollection<CriticalInjury>();
            Inventory = new Inventory();
            Talents = new ObservableCollection<Talent>();
            XP = new Experience();

            initializeCharacteristics();
            initializeSkills();
        }

        void initializeCharacteristics()
        {
            Agility = new AgilityCharacteristic();
            Brawn = new BrawnCharacteristic();
            Cunning = new CunningCharacteristic();
            Intellect = new IntellectCharacteristic();
            Presence = new PresenceCharacteristic();
            Willpower = new WillpowerCharacteristic();
        }

        void initializeSkills()
        {
            Skills = new ObservableCollection<Skill>
            {
                new AstrogationSkill(Intellect),
                new AthleticsSkill(Brawn),
                new LightsaberSkill(Brawn),
            };
        }
    }
}
