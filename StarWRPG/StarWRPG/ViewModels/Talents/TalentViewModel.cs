using StarWRPG.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace StarWRPG.ViewModels
{
    public class TalentViewModel : ViewModelBase
    {
        public Talent Talent;
        Experience xp;

        public string Name
        {
            get { return Talent.Name; }
            set
            {
                Talent.Name = value;
                OnPropertyChanged();
            }
        }
        public string Description
        {
            get { return Talent.Description; }
            set
            {
                Talent.Description = value;
                OnPropertyChanged();
            }
        }
        public uint PageNumber
        {
            get { return Talent.PageNumber; }
            set
            {
                Talent.PageNumber = value;
                OnPropertyChanged();
            }
        }
        public uint AvailableXP
        {
            get { return xp.AvailableXP; }
            set
            {
                xp.AvailableXP = value;
                OnPropertyChanged();
            }
        }
        public uint TotalXP
        {
            get { return xp.TotalXP; }
            set
            {
                xp.TotalXP = value;
                OnPropertyChanged();
            }
        }
        public uint XPCost
        {
            get { return Talent.XPCost; }
            set
            {
                Talent.XPCost = value;
                OnPropertyChanged();
            }
        }
        public bool UseXP
        {
            get { return UserSettings.UseXPForTalents; }
            set
            {
                UserSettings.UseXPForTalents = value;
                OnPropertyChanged();
            }
        }

        public TalentViewModel(Experience xp) : this(new Talent(), xp) { }

        public TalentViewModel(Talent talent, Experience xp)
        {
            Talent = talent;
            this.xp = xp;
            SubscribeToExperienceChanged();
        }

        private void SubscribeToExperienceChanged()
        {
            MessagingCenter.Subscribe<Experience>(this, "Experience Changed", (s) =>
            {
                OnPropertyChanged(nameof(AvailableXP));
                OnPropertyChanged(nameof(TotalXP));
            });
        }
    }
}
