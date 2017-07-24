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
    public class SkillsViewModel : ViewModelBase, ISearchable
    {
        public ICommand SearchCommand { get { return new Command<String>(Search); } }
        public ICommand DefaultSortCommand { get { return new Command(DefaultSort); } }

        public Characteristics Characteristics;
        public Experience XP;
        ObservableCollection<SkillViewModel> skillViewModels;
        public ObservableCollection<SkillViewModel> SkillViewModels
        {
            get { return skillViewModels; }
            set
            {
                skillViewModels = value;
                OnPropertyChanged();
            }
        }

        ObservableCollection<Skill> skills;
        public uint AvailableXP
        {
            get { return XP.AvailableXP; }
            set
            {
                XP.AvailableXP = value;
                OnPropertyChanged();
            }
        }
        public uint TotalXP
        {
            get { return XP.TotalXP; }
            set
            {
                XP.TotalXP = value;
                OnPropertyChanged();
            }
        }

        public SkillsViewModel(ObservableCollection<Skill> skills, Characteristics characteristics, Experience xp)
        {
            this.skills = skills;
            Characteristics = characteristics;
            XP = xp;

            SkillViewModels = new ObservableCollection<SkillViewModel>();
            foreach (var skill in this.skills)
            {
                SkillViewModels.Add(new SkillViewModel(skill, characteristics, xp));
            }
        }

        public void AddSkill(SkillViewModel skill)
        {
            SkillViewModels.Add(skill);
            skills.Add(skill.Skill);
        }

        public void RemoveSkill(SkillViewModel skill)
        {
            SkillViewModels.Remove(skill);
            skills.Remove(skill.Skill);
        }

        public void DefaultSort()
        {
            List<SkillViewModel> result = SkillViewModels.OrderBy(x => x.Name).ToList();
            SkillViewModels = new ObservableCollection<SkillViewModel>(result);
        }

        public void Search(string searchText)
        {
            searchText = searchText.ToLower();
            List<SkillViewModel> result;
            if (searchText == null)
            {
                DefaultSort();
                return;
            }
            else if (Int32.TryParse(searchText, out int rank))
            {
                result = SkillViewModels.OrderByDescending(x => x.Rank == rank).ToList();
            }
            else if (searchText.Equals("rank"))
            {
                result = SkillViewModels.OrderByDescending(x => x.Rank).ToList();
            }
            else if (searchText.Equals("career"))
            {
                result = SkillViewModels.OrderByDescending(x => x.IsCareer).ToList();
            }
            else
            {
                result = SkillViewModels.OrderByDescending(x => x.Name.ToLower().Contains(searchText)).ToList();
            }
            SkillViewModels = new ObservableCollection<SkillViewModel>(result);
        }
    }
}
