using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using System.Text;
using TafeBuddy_SRV_desktop_App.Model;
using Windows.ApplicationModel.Core;
using Windows.Foundation;
using Windows.Foundation.Collections;
using Windows.UI;
using Windows.UI.Core;
using Windows.UI.ViewManagement;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Controls.Primitives;
using Windows.UI.Xaml.Data;
using Windows.UI.Xaml.Input;
using Windows.UI.Xaml.Media;
using Windows.UI.Xaml.Navigation;

// The Blank Page item template is documented at https://go.microsoft.com/fwlink/?LinkId=234238

namespace TafeBuddy_SRV_desktop_App.View
{
    /// <summary>
    /// An empty page that can be used on its own or navigated to within a Frame.
    /// </summary>
    public sealed partial class SRV_Student : Page
    {
        private string User = "";
        private static string StudentID;

        private ObservableCollection<StudentGrade> Results = new ObservableCollection<StudentGrade>();
        private ObservableCollection<Competency> RequiredCompetencies = new ObservableCollection<Competency>();

        public SRV_Student()
        {
            this.InitializeComponent();

            // formats the title bar
            ApplicationViewTitleBar formattableTitleBar = ApplicationView.GetForCurrentView().TitleBar;
            formattableTitleBar.ButtonBackgroundColor = Colors.Transparent;
            formattableTitleBar.ButtonForegroundColor = Colors.Black;
            CoreApplicationViewTitleBar coreTitleBar = CoreApplication.GetCurrentView().TitleBar;
            coreTitleBar.ExtendViewIntoTitleBar = true;

            welcomeTxtBlock.Text = "Welcome, " + App.userLogged_firstName + " " + App.userLogged_lastName;

            User = App.userLogged_id;

            PopulateUser();
            PopulateQualification();
            DisplayStudentResults(StudentID);
        }

        /**
         * Method to populate student details: Name, Qualification, Email
         **/
        public void PopulateUser()
        {
            // Creates the connection
            MySqlConnection conn = new MySqlConnection(App.connectionString);
            // Creates the SQL command
            MySqlCommand command = new MySqlCommand("SELECT * FROM student WHERE EmailAddress = '" + User + "' OR StudentID = '" + User + "'", conn);

            MySqlDataReader dr; // Creates a reader to read the data

            conn.Open(); // Open the connection

            dr = command.ExecuteReader(); // Execute the command and attach to the reader

            // While there are rows in the read
            while (dr.Read())
            {
                StudentID = dr.GetString("StudentID"); // Stores the StudentID to use in the Competences page
                studentIdTxtbox.Text = dr.GetString("StudentID");
                studentEmailTxtbox.Text = dr.GetString("EmailAddress");
                studentNameTxtbox.Text = dr.GetString("GivenName") + " " + dr.GetString("LastName");
            }

            // Close the connection
            conn.Close();
        }

        /**
         * Method to populate student qualification combobox
         **/
        public void PopulateQualification()
        {
            // Creates the connection
            MySqlConnection conn = new MySqlConnection(App.connectionString);

            StringBuilder sb = new StringBuilder();
            sb.Append("SELECT distinct q.NationalQualCode, q.QualName, q.QualCode FROM Student s ");
            sb.Append("INNER JOIN student_studyplan ss ON s.StudentID = ss.StudentID ");
            sb.Append("INNER JOIN Qualification q on ss.QualCode = q.QualCode ");
            sb.Append("WHERE (s.EmailAddress = '").Append(User).Append("' ");
            sb.Append(" OR s.StudentID = '").Append(User).Append("') ");

            // Creates the SQL command
            MySqlCommand command = new MySqlCommand(sb.ToString(), conn);

            MySqlDataReader dr; // Creates a reader to read the data

            conn.Open(); // Open the connection

            dr = command.ExecuteReader(); // Execute the command and attach to the reader

            qualificationCmbbox.Items.Clear(); // Clear all the items
            // While there are rows in the read
            while (dr.Read())
            {
                // Add an item in the Combobox
                Qualification qualification = new Qualification(dr.GetString("QualCode"))
                {
                    QualCode = dr.GetString("QualCode"),
                    NationalQualCode = dr.GetString("NationalQualCode"),
                    QualName = dr.GetString("QualName")
                };

                qualificationCmbbox.Items.Add(qualification);
                qualificationCmbbox.SelectedItem = qualificationCmbbox.Items[0];
            }

            // Close the connection
            conn.Close();
        }

        public void DisplayStudentResults(string studentID)
        {
            // Clears list
            Results.Clear();

            // Creates the connection
            MySqlConnection conn = new MySqlConnection(App.connectionString);

            StringBuilder sb = new StringBuilder();
            sb.Append("SELECT s.StudentID, s.GivenName, s.LastName, sg.Grade, sg.CRN, crnd.SubjectCode, crnd.TafeCompCode, sub.SubjectDescription ");
            sb.Append("FROM student_grade as sg INNER JOIN student as s ");
            sb.Append("ON sg.StudentID = s.StudentID ");
            sb.Append("INNER JOIN crn_detail as crnd ");
            sb.Append("ON sg.CRN = crnd.CRN ");
            sb.Append("INNER JOIN subject as sub ");
            sb.Append("ON crnd.SubjectCode = sub.SubjectCode ");
            sb.Append("WHERE s.StudentID = '").Append(studentID).Append("'; ");

            // Creates the SQL command
            MySqlCommand command = new MySqlCommand(sb.ToString(), conn);

            MySqlDataReader dr; // Creates a reader to read the data

            conn.Open(); // Open the connection

            dr = command.ExecuteReader(); // Execute the command and attach to the reader


            // While there are rows in the read            
            while (dr.Read())
            {

                string subjectdesc = dr.GetString("SubjectDescription");
                string subjectCode = dr.GetString("SubjectCode");
                string compCode = dr.GetString("TafeCompCode");
                string grade = "";
                //if (!dr.IsDBNull(dr.GetOrdinal("Grade")))
                if (dr.IsDBNull(dr.GetOrdinal("Grade")))
                {
                    grade = "Ongoing";
                }
                else
                {
                    grade = dr.GetString("Grade");
                }

                StudentGrade result = new StudentGrade(subjectCode, subjectdesc, grade, compCode);
                Results.Add(result);
            }

            // Close the connection
            conn.Close();
        }

        public void DisplayCompetencyChecklist(string studentID, string qualID)
        {
            RequiredCompetencies.Clear();

            // Creates the connection
            MySqlConnection conn = new MySqlConnection(App.connectionString);

            StringBuilder allCompSb = new StringBuilder();
            allCompSb.Append("SELECT q.QualCode, q.NationalQualCode, q.TafeQualCode, q.QualName, c.TafeCompCode, c.NationalCompCode, c.CompetencyName, cq.CompTypeCode");
            allCompSb.Append(" FROM competency AS c INNER JOIN competency_qualification as cq");
            allCompSb.Append(" ON c.NationalCompCode = cq.NationalCompCode");
            allCompSb.Append(" INNER JOIN qualification AS q");
            allCompSb.Append(" ON q.QualCode = cq.QualCode");
            allCompSb.Append(" WHERE q.QualCode = '").Append(qualID).Append("'; ");

            // Creates the SQL command
            MySqlCommand command = new MySqlCommand(allCompSb.ToString(), conn);

            MySqlDataReader dr; // Creates a reader to read the data

            conn.Open(); // Open the connection

            dr = command.ExecuteReader(); // Execute the command and attach to the reader

            int totalUnits = 0;
            int completedUnits = 0;
            int ongoingUnits = 0;
            int futureUnits = 0;

            // While there are rows in the read
            while (dr.Read())
            {
                totalUnits++;

                string tafeCompCode = dr.GetString("TafeCompCode");
                string nationalCompCode = dr.GetString("NationalCompCode");
                string competencyName = dr.GetString("CompetencyName");
                string competencyType = dr.GetString("CompTypeCode");
                Competency competency = new Competency(tafeCompCode, nationalCompCode, competencyName, competencyType);

                if ((competency.getCompetencyStatus(StudentID, competency)) == "Ongoing")
                {
                    ongoingUnits++;
                }
                else if ((competency.getCompetencyStatus(StudentID, competency)) == "Completed")
                {
                    completedUnits++;
                    competency.Done = true;
                }
                else
                {
                    futureUnits++;
                }

                RequiredCompetencies.Add(competency);

                // Calculates the Percentage

                double percent = 0;
                percent = ((double)completedUnits / (double)totalUnits);
                progressPercent.Value = percent * 100;
                txtProgressPercent.Text = percent.ToString("P0");

                totalunitsTxtBlock.Text = "Total Units: " + totalUnits.ToString();
                completedUnitsTxtBlk.Text = "Completed: " + completedUnits.ToString();
                ongoingUnisTxtblk.Text = "Ongoing: " + ongoingUnits.ToString();
                futureUnitsTxtblk.Text = "Future: " + futureUnits.ToString();

            }

            // Close the connection
            conn.Close();

        }

        /**
         * Logs out of TAFE Buddy
         **/
        // TODO: confirmation popup
        private void LogoutHyperlink_Click(object sender, RoutedEventArgs e)
        {
            this.Frame.Navigate(typeof(View.Login));
        }

        /**
         * Apply for Parchment Request Button
         * A page (View.ParchmentRequest) pops up allowing user to apply for a parchment request
         **/
        private async void ApplyForParchmentBtn_Click(object sender, RoutedEventArgs e)
        {
            //this.Frame.Navigate(typeof(View.ParchmentRequest));
            CoreApplicationView newView = CoreApplication.CreateNewView();
            int newViewId = 0;
            await newView.Dispatcher.RunAsync(CoreDispatcherPriority.Normal, () =>
            {
                Frame frame = new Frame();
                frame.Navigate(typeof(View.ParchmentRequest), null);
                Window.Current.Content = frame;
                // You have to activate the window in order to show it later.
                Window.Current.Activate();

                newViewId = ApplicationView.GetForCurrentView().Id;
            });
            bool viewShown = await ApplicationViewSwitcher.TryShowAsStandaloneAsync(newViewId);

        }

        /**
         * Button to open page (View.QualificationLookup)
         * allowing user to search different qualification to see progress
         **/
        private async void LookupQualHyperlinkBtn_Click(object sender, RoutedEventArgs e)
        {
            //this.Frame.Navigate(typeof(View.QualificationLookup));
            CoreApplicationView newView = CoreApplication.CreateNewView();
            int newViewId = 0;
            await newView.Dispatcher.RunAsync(CoreDispatcherPriority.Normal, () =>
            {
                Frame frame = new Frame();
                frame.Navigate(typeof(View.QualificationLookup), null);
                Window.Current.Content = frame;
                // You have to activate the window in order to show it later.
                Window.Current.Activate();

                newViewId = ApplicationView.GetForCurrentView().Id;
            });
            bool viewShown = await ApplicationViewSwitcher.TryShowAsStandaloneAsync(newViewId);
        }


        private void QualificationCmbbox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            DisplayCompetencyChecklist(StudentID, ((Qualification)qualificationCmbbox.SelectedItem).QualCode);
        }

        private void HomeBtnAppBar_Click(object sender, RoutedEventArgs e)
        {
            this.Frame.Navigate(typeof(View.Home));
        }
    }
    

}
