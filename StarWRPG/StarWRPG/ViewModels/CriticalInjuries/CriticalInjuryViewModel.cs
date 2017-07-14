using StarWRPG.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.ViewModels
{
    public class CriticalInjuryViewModel : ViewModelBase
    {
        public CriticalInjury CriticalInjury;

        public string D100Roll
        {
            get { return CriticalInjury.D100Roll; }
            set
            {
                CriticalInjury.D100Roll = value;
                OnPropertyChanged();
            }
        }
        public string Severity
        {
            get { return CriticalInjury.Severity; }
            set
            {
                CriticalInjury.Severity = value;
                OnPropertyChanged();
            }
        }
        public string Result
        {
            get { return CriticalInjury.Result; }
            set
            {
                CriticalInjury.Result = value;
                OnPropertyChanged();
            }
        }

        public CriticalInjuryViewModel() : this(new CriticalInjury()) { }

        public CriticalInjuryViewModel(CriticalInjury injury)
        {
            CriticalInjury = injury;
        }
    }
}
