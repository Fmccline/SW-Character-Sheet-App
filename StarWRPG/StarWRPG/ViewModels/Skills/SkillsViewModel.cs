using StarWRPG.Models;
using System.Collections.ObjectModel;
using System;

namespace StarWRPG.ViewModels
{
    public class SkillsViewModel : ViewModelCollection<SkillViewModel, Skill>
    {
        public SkillsViewModel(ObservableCollection<Skill> collection) : base(collection) { }

        protected override SkillViewModel createViewModel(Skill model)
        {
            return new SkillViewModel(model);
        }

        protected override bool viewModelContainsModel(SkillViewModel viewModel, Skill model)
        {
            return (viewModel.Skill == model);
        }
    }
}
