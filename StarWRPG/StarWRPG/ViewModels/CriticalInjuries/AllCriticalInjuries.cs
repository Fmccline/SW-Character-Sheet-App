using StarWRPG.Models;
using StarWRPG.Models.CriticalInjuries;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StarWRPG.ViewModels
{
    public class AllCriticalInjuries : List<CriticalInjuryViewModel>
    {
        public AllCriticalInjuries()
        {
            AddAllCriticalInjuries();
        }

        private void AddAllCriticalInjuries()
        {
            AddInjury(new MinorNick());
            AddInjury(new SlowedDown());
            AddInjury(new SuddenJolt());
            AddInjury(new Distracted());
            AddInjury(new OffBalance());
            AddInjury(new DiscouragingWound());
            AddInjury(new Stunned());
            AddInjury(new Stinger());
            AddInjury(new BowledOver());
            AddInjury(new HeadRinger());
            AddInjury(new FearsomeWound());
            AddInjury(new AgonizingWound());
            AddInjury(new SlightlyDazed());
            AddInjury(new ScatteredSenses());
            AddInjury(new Hamstrung());
            AddInjury(new Overpowered());
            AddInjury(new Winded());
            AddInjury(new Compromised());
            AddInjury(new AtTheBrink());
            AddInjury(new Crippled());
            AddInjury(new Maimed());
            AddInjury(new HorrificInjury());
            AddInjury(new TemorarilyLame());
            AddInjury(new Blinded());
            AddInjury(new KnockedSenseless());
            AddInjury(new GruesomeInjury());
            AddInjury(new BleedingOut());
            AddInjury(new TheEndIsNigh());
            AddInjury(new Dead());
        }

        private void AddInjury(CriticalInjury crit)
        {
            Add(new CriticalInjuryViewModel(crit));
        }
    }
}
