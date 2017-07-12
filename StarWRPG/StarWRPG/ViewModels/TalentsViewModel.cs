using StarWRPG.Controls;
using StarWRPG.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace StarWRPG.ViewModels
{
    public class TalentsViewModel : ViewModelBase, ISearchable
    {
        ObservableCollection<TalentViewModel> talentViewModels;
        public ObservableCollection<TalentViewModel> TalentViewModels
        {
            get { return talentViewModels; }
            private set
            {
                talentViewModels = value;
                OnPropertyChanged();
            }
        }

        public ICommand SearchCommand { get { return new Command<String>(Search); } }
        public ICommand DefaultSortCommand { get { return new Command(DefaultSort); } }

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

        public void DefaultSort()
        {
            List<TalentViewModel> result = TalentViewModels.OrderBy(x => x.Name).ToList();
            TalentViewModels = new ObservableCollection<TalentViewModel>(result);
        }

        public void Search(string searchText)
        {
            searchText = searchText.ToLower();
            List<TalentViewModel> result;
            if (searchText == null)
            {
                DefaultSort();
                return;
            }
            else if (UInt32.TryParse(searchText, out uint pageNumber))
            {
                result = TalentViewModels.OrderByDescending(x => x.PageNumber == pageNumber).ToList();
            }
            else
            {
                result = TalentViewModels.OrderByDescending(x => x.Description.ToLower().Contains(searchText)).ToList();
                result = result.OrderByDescending(x => x.Name.ToLower().Contains(searchText)).ToList();
            }
            foreach(var talent in result)
            {
                Debug.WriteLine(talent.Name);
            }
            TalentViewModels = new ObservableCollection<TalentViewModel>(result);
        }
    }
}
