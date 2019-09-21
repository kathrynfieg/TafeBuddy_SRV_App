using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TafeBuddy_SRV_desktop_App.Model
{
    public class Competency
    {
        public bool Marked;
        public string TafeCompCode;
        public string NationalCompCode;
        public string CompetencyName;
        public string CompetencyType;

        public Competency(string tafeCompCode, string nationalCompCode, string competencyName, string competencyType)
        {
            this.TafeCompCode = tafeCompCode;
            this.NationalCompCode = nationalCompCode;
            this.CompetencyName = competencyName;
            this.CompetencyType = competencyType;
        }
    }
}
