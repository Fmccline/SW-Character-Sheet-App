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
        public string Name { get; set; }
        public string SpecializationTrees { get; set; }
        public string Species { get; set; }
      
        public uint Conflict { get; set; }
        public uint Contribution { get; set; }
        public uint Credits { get; set; }
        public uint CurrentEncumbrance { get; set; }
        public uint CurrentStrain { get; set; }
        public uint CurrentWounds { get; set; }
        public uint EncumbranceThreshold { get; set; }
        public uint ForceRating { get; set; }
        public uint MaxWounds { get; set; }
        public uint MaxStrain { get; set; }
        public uint MeleeDefense { get; set; }
        public uint Morality { get; set; }
        public uint RangedDefense { get; set; }
        public uint SoakValue { get; set; }
        public uint TotalDuty { get; set; }
        public uint TotalObligation { get; set; }

        public Characteristics Characteristics { get; set; }
        public CharacterDescription Description { get; set; }

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
            Name = "";
            SpecializationTrees = "";
            Species = "";

            Characteristics = new Characteristics();
            Description = new CharacterDescription();
            CriticalInjuries = new ObservableCollection<CriticalInjury>();
            Inventory = new Inventory();
            Motivations = new ObservableCollection<CharacterMotivationBase>();
            Talents = new ObservableCollection<Talent>();
            XP = new Experience();

            InitializeSkills();
        }

        void InitializeSkills()
        {
            var agility = Characteristics.Agility;
            var brawn = Characteristics.Brawn;
            var cunning = Characteristics.Cunning;
            var intellect = Characteristics.Intellect;
            var presence = Characteristics.Presence;
            var willpower = Characteristics.Willpower;
            Skills = new ObservableCollection<Skill>
            {
                new AstrogationSkill(intellect),
                new AthleticsSkill(brawn),
                new CharmSkill(presence),
                new CoercionSkill(willpower),
                new ComputersSkill(intellect),
                new CoolSkill(presence),
                new CoordinationSkill(agility),
                new DeceptionSkill(cunning),
                new DisciplineSkill(willpower),
                new LeadershipSkill(presence),
                new MechanicsSkill(intellect),
                new MedicineSkill(intellect),
                new NegotiationSkill(presence),
                new PerceptionSkill(cunning),
                new PilotingPlanetarySkill(agility),
                new PilotingSpaceSkill(agility),
                new ResilienceSkill(brawn),
                new SkullduggerySkill(cunning),
                new StealthSkill(agility),
                new StreetwiseSkill(cunning),
                new SurvivalSkill(cunning),
                new VigilanceSkill(willpower),

                new BrawlSkill(brawn),
                new GunnerySkill(agility),
                new LightsaberSkill(brawn),
                new MeleeSkill(brawn),
                new RangedLightSkill(agility),
                new RangedHeavySkill(agility),

                new CoreWorldsSkill(intellect),
                new EducationSkill(intellect),
                new LoreSkill(intellect),
                new OuterRimSkill(intellect),
                new UnderworldSkill(intellect),
                new WarefareSkill(intellect),
                new XenologySkill(intellect),
            };
        }
    }
}
