using StarWRPG.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.ViewModels
{
    public class CriticalInjuriesViewModel : ViewModelBase
    {
        ObservableCollection<CriticalInjury> criticalInjuries;
        public ObservableCollection<CriticalInjuryViewModel> CriticalInjuryViewModels { get; private set; }
        public AllCriticalInjuries AllCriticalInjuries { get; set; }

        public CriticalInjuriesViewModel(ObservableCollection<CriticalInjury> injuries)
        {
            criticalInjuries = injuries;
            AllCriticalInjuries = new AllCriticalInjuries();
            CriticalInjuryViewModels = new ObservableCollection<CriticalInjuryViewModel>();
            foreach (CriticalInjury injury in criticalInjuries)
            {
                CriticalInjuryViewModels.Add(new CriticalInjuryViewModel(injury));
            }
        }

        public void AddCriticalInjury(CriticalInjuryViewModel injury)
        {
            CriticalInjuryViewModels.Add(injury);
            criticalInjuries.Add(injury.CriticalInjury);
        }

        public void RemoveCriticalInjury(CriticalInjuryViewModel injury)
        {
            CriticalInjuryViewModels.Remove(injury);
            criticalInjuries.Remove(injury.CriticalInjury);
        }
    }
}
