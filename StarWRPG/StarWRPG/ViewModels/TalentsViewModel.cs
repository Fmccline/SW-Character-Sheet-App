using StarWRPG.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.ViewModels
{
    public class TalentsViewModel
    {
        public ObservableCollection<TalentViewModel> TalentViewModels { get; private set; }
        ObservableCollection<Talent> talents;

        public TalentsViewModel(ObservableCollection<Talent> talents)
        {
            this.talents = talents;

            TalentViewModels = new ObservableCollection<TalentViewModel>();
            foreach (var talent in talents)
            {
                TalentViewModels.Add(new TalentViewModel(talent));
            }
        }

        public void AddTalent(TalentViewModel talentViewModel)
        {
            TalentViewModels.Add(talentViewModel);
            talents.Add(talentViewModel.Talent);
        }

        public void AddTalent(Talent talent)
        {
            AddTalent(new TalentViewModel(talent));
        }

        public void RemoveTalent(TalentViewModel talentViewModel)
        {
            TalentViewModels.Remove(talentViewModel);
            talents.Remove(talentViewModel.Talent);
        }

        public void RemoveTalent(Talent talent)
        {
            foreach (var talentViewModel in TalentViewModels)
            {
                if (talent.Name.Equals(talentViewModel.Name))
                {
                    RemoveTalent(talentViewModel);
                }
            }
        }

    }
}
