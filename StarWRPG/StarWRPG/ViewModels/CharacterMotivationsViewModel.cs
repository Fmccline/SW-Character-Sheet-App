using StarWRPG.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.ViewModels
{
    public class CharacterMotivationsViewModel : ViewModelBase
    {
        FFGCharacter ffgCharacter;

        public string EmotionalStrenths
        {
            get { return ffgCharacter.EmotionalStrengths; }
            set
            {
                ffgCharacter.EmotionalStrengths = value;
                OnPropertyChanged();
            }
        }
        public string EmotionalWeaknesses
        {
            get { return ffgCharacter.EmotionalWeaknesses; }
            set
            {
                ffgCharacter.EmotionalWeaknesses = value;
                OnPropertyChanged();
            }
        }

        public string Motivation1Description
        {
            get { return ffgCharacter.Motivation1.Description; }
            set
            {
                ffgCharacter.Motivation1.Description = value;
                OnPropertyChanged();
            }
        }
        public string Motivation2Description
        {
            get { return ffgCharacter.Motivation2.Description; }
            set
            {
                ffgCharacter.Motivation2.Description = value;
                OnPropertyChanged();
            }
        }
        public string Duty1Description
        {
            get { return ffgCharacter.Duty1.Description; }
            set
            {
                ffgCharacter.Duty1.Description = value;
                OnPropertyChanged();
            }
        }
        public string Duty2Description
        {
            get { return ffgCharacter.Duty2.Description; }
            set
            {
                ffgCharacter.Duty2.Description = value;
                OnPropertyChanged();
            }
        }
        public string Obligation1Description
        {
            get { return ffgCharacter.Obligation1.Description; }
            set
            {
                ffgCharacter.Obligation1.Description = value;
                OnPropertyChanged();
            }
        }
        public string Obligation2Description
        {
            get { return ffgCharacter.Obligation2.Description; }
            set
            {
                ffgCharacter.Obligation2.Description = value;
                OnPropertyChanged();
            }
        }
        public string Obligation3Description
        {
            get { return ffgCharacter.Obligation3.Description; }
            set
            {
                ffgCharacter.Obligation3.Description = value;
                OnPropertyChanged();
            }
        }

        public string Motivation1Type
        {
            get { return ffgCharacter.Motivation1.Type; }
            set
            {
                ffgCharacter.Motivation1.Type = value;
                OnPropertyChanged();
            }
        }
        public string Motivation2Type
        {
            get { return ffgCharacter.Motivation2.Type; }
            set
            {
                ffgCharacter.Motivation2.Type = value;
                OnPropertyChanged();
            }
        }
        public string Duty1Type
        {
            get { return ffgCharacter.Duty1.Type; }
            set
            {
                ffgCharacter.Duty1.Type = value;
                OnPropertyChanged();
            }
        }
        public string Duty2Type
        {
            get { return ffgCharacter.Duty2.Type; }
            set
            {
                ffgCharacter.Duty2.Type = value;
                OnPropertyChanged();
            }
        }
        public string Obligation1Type
        {
            get { return ffgCharacter.Obligation1.Type; }
            set
            {
                ffgCharacter.Obligation1.Type = value;
                OnPropertyChanged();
            }
        }
        public string Obligation2Type
        {
            get { return ffgCharacter.Obligation2.Type; }
            set
            {
                ffgCharacter.Obligation2.Type = value;
                OnPropertyChanged();
            }
        }
        public string Obligation3Type
        {
            get { return ffgCharacter.Obligation3.Type; }
            set
            {
                ffgCharacter.Obligation3.Type = value;
                OnPropertyChanged();
            }
        }

        public uint Obligation1Value
        {
            get { return ffgCharacter.Obligation1.Value; }
            set
            {
                ffgCharacter.Obligation1.Value = value;
                OnPropertyChanged();
            }
        }
        public uint Obligation2Value
        {
            get { return ffgCharacter.Obligation2.Value; }
            set
            {
                ffgCharacter.Obligation2.Value = value;
                OnPropertyChanged();
            }
        }
        public uint Obligation3Value
        {
            get { return ffgCharacter.Obligation3.Value; }
            set
            {
                ffgCharacter.Obligation3.Value = value;
                OnPropertyChanged();
            }
        }

        public uint Conflict
        {
            get { return ffgCharacter.Conflict; }
            set
            {
                ffgCharacter.Conflict = value;
                OnPropertyChanged();
            }
        }
        public uint Contribution
        {
            get { return ffgCharacter.Contribution; }
            set
            {
                ffgCharacter.Contribution = value;
                OnPropertyChanged();
            }
        }
        public uint Morality
        {
            get { return ffgCharacter.Morality; }
            set
            {
                ffgCharacter.Morality = value;
                OnPropertyChanged();
            }
        }
        public uint TotalDuty
        {
            get { return ffgCharacter.TotalDuty; }
            set
            {
                ffgCharacter.TotalDuty = value;
                OnPropertyChanged();
            }
        }
        public uint TotalObligation
        {
            get { return ffgCharacter.TotalObligation; }
        }

        public CharacterMotivationsViewModel(FFGCharacter character)
        {
            ffgCharacter = character;
        }
    }
}
