﻿using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;

namespace StarWRPG
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
		// Characteristics
		public AgilityCharacteristic Agility { get; set; }
		public BrawnCharacteristic Brawn { get; set; }
		public CunningCharacteristic Cunning { get; set; }
		public IntellectCharacteristic Intellect { get; set; }
		public PresenceCharacteristic Presence { get; set; }
		public WillpowerCharacteristic Willpower { get; set; }
		// Skills
        public ObservableCollection<Skill> Skills { get; set; }

		// XP
		// Motivations
		// Emotional Strengths/Weaknesses
		// Conflict and Morality
		// Inventory (Holds equipped items)
		// Critical Injuries
		// Talents
		// Force Powers

		public FaDCharacter(uint maxWound, uint maxStrain)
		{
			Wounds = new Threshold(maxWound);
			Strain = new Threshold(maxStrain);
			Defense = new Defense();
			ForceRating = 0;
			SoakValue = 0;
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
