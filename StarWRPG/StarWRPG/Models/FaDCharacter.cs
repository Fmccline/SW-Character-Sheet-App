using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;

namespace StarWRPG.Models
{
    // FaDCharacter
    // Invariants:
    //  Wounds, Strain, Defense, and all the Characteristics and Skills are initialized
	public class FaDCharacter
	{
		// If any change happens here, change should also happen in the ViewModel!
		public string Name { get; set; }
		public string Background { get; set; }
		public string Description { get; set; }
		public string Species { get; set; }
		public string Career { get; set; }
		public string SpecializationTrees { get; set; }
		public uint ForceRating { get; set; }
		public uint SoakValue { get; set; }
		public Threshold Wounds { get; set; }
		public Threshold Strain { get; set; }
		public Defense Defense { get; set; }
		public AgilityCharacteristic Agility { get; set; }
		public BrawnCharacteristic Brawn { get; set; }
		public CunningCharacteristic Cunning { get; set; }
		public IntellectCharacteristic Intellect { get; set; }
		public PresenceCharacteristic Presence { get; set; }
		public WillpowerCharacteristic Willpower { get; set; }
        public ObservableCollection<Skill> Skills { get; set; }
		public Experience XP { get; set; }
		public string Motivation { get; set; }
		public string EmotionalStrengths { get; set; }
        public string EmotionalWeaknesses { get; set; }
		public uint Conflict { get; set; }
        public uint Morality { get; set; }
		public Inventory Inventory { get; set; }
		public ObservableCollection<CriticalInjury> CriticalInjuries { get; set; }
        public ObservableCollection<Talent> Talents { get; set; }

		public FaDCharacter(uint maxWound, uint maxStrain)
		{
			Wounds = new Threshold(maxWound);
			Strain = new Threshold(maxStrain);
			Defense = new Defense();
			ForceRating = 0;
			SoakValue = 0;
            Conflict = 0;
            Morality = 0;
            XP = new Experience();
            Inventory = new Inventory();
            CriticalInjuries = new ObservableCollection<CriticalInjury>();
            Talents = new ObservableCollection<Talent>();
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
