using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.ViewModels
{
    public abstract class ViewModelCollection<ViewModel,Model> : ViewModelBase
    {
        public ObservableCollection<ViewModel> ViewModels { get; private set; }
        ObservableCollection<Model> models { get; set; }

        public ViewModelCollection(ObservableCollection<Model> collection)
        {
            models = collection;
            ViewModels = new ObservableCollection<ViewModel>();
            foreach (Model model in models)
            {
                ViewModels.Add(createViewModel(model));
            }
        }

        protected abstract ViewModel createViewModel(Model model);
        protected abstract bool viewModelContainsModel(ViewModel viewModel, Model model);

        public void Add(Model model)
        {
            models.Add(model);
            ViewModels.Add(createViewModel(model));
        }

        public void Remove(Model model)
        {
            models.Remove(model);
            foreach (ViewModel viewModel in ViewModels)
            {
                if (viewModelContainsModel(viewModel,model))
                {
                    ViewModels.Remove(viewModel);
                }
            }
        }

    }
}
