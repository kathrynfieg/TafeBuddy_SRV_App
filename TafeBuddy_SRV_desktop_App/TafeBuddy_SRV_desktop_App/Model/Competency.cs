using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TafeBuddy_SRV_desktop_App.Model
{
    public class Competency
    {
        public bool Done;
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

        public string getCompetencyStatus(string studentID, Competency comp)
        {
            string status = "";

            // Creates the connection
            MySqlConnection conn = new MySqlConnection(App.connectionString);

            StringBuilder sb = new StringBuilder();
            sb.Append("SELECT s.StudentID, s.GivenName, s.LastName, sg.Grade, sg.CRN, crnd.TafeCompCode, crnd.SubjectCode, sub.SubjectDescription");
            sb.Append(" FROM student_grade as sg INNER JOIN student as s");
            sb.Append(" ON sg.StudentID = s.StudentID");
            sb.Append(" INNER JOIN crn_detail as crnd");
            sb.Append(" ON sg.CRN = crnd.CRN");
            sb.Append(" INNER JOIN subject as sub");
            sb.Append(" ON crnd.SubjectCode = sub.SubjectCode");
            sb.Append(" WHERE s.StudentID = '").Append(studentID).Append("' AND crnd.TafeCompCode = '").Append(comp.TafeCompCode).Append("';");

            // Creates the SQL command
            MySqlCommand command = new MySqlCommand(sb.ToString(), conn);

            MySqlDataReader dr; // Creates a reader to read the data

            conn.Open(); // Open the connection

            dr = command.ExecuteReader(); // Execute the command and attach to the reader


            // While there are rows in the read            
            while (dr.Read())
            {
                //string subjectdesc = dr.GetString("SubjectDescription");
                if (dr.IsDBNull(dr.GetOrdinal("Grade")))
                {
                    status = "Ongoing";
                }
                else if (dr.GetString("Grade") == "P" || dr.GetString("Grade") == "PA" || dr.GetString("Grade") == "C" || dr.GetString("Grade") == "D")
                {
                    status = "Completed";
                }
                else
                {
                    status = "Future";
                }
            }

            // Close the connection
            conn.Close();

            return status;

        }
    }
}
