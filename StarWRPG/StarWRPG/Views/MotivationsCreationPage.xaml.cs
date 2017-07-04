using StarWRPG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace StarWRPG.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class MotivationsCreationPage : BasePage
	{
        CharacterMotivationsViewModel characterMotivationsViewModel;

        protected override StackLayout mainStackLayout
        {
            get { return MainStackLayout; }
        }

        public MotivationsCreationPage (FFGCharacterViewModel character)
		{
			InitializeComponent();

            characterMotivationsViewModel = character.CharacterMotivationsViewModel;
            BindingContext = characterMotivationsViewModel;
        }
	}
}