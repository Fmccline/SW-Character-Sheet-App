using StarWRPG.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.ViewModels
{
    public class TalentViewModel : ViewModelBase
    {
        public Talent Talent;

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

        public TalentViewModel() : this(new Talent()) { }

        public TalentViewModel(Talent talent)
        {
            Talent = talent;
        }
    }
}
