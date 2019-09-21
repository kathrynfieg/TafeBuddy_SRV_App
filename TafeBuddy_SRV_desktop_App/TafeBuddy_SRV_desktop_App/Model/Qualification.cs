using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TafeBuddy_SRV_desktop_App.Model
{
    public class Qualification
    {
        public string QualCode;
        public string NationalQualCode;
        public string TafeQualCode;
        public string QualName;
        public Qualification(string qualCode)
        {
            QualCode = qualCode;
        }

        public override string ToString()
        {
            return NationalQualCode + " " + QualName;
        }
    }
}
