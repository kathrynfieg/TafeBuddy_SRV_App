using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TafeBuddy_SRV_desktop_App.Model
{
    public class StudentGrade
    {
        public string SubjectCode;
        public string SubjectDescription;
        public string Result;
        public string CompCode;

        public StudentGrade(string subjectCode, string subjectDescription, string result, string compCode)
        {
            this.SubjectCode = subjectCode;
            this.SubjectDescription = subjectDescription;
            this.Result = result;
            this.CompCode = compCode;
        }
    }
}
