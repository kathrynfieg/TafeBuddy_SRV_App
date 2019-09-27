using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using System.Text;
using TafeBuddy_SRV_desktop_App.Model;
using Windows.ApplicationModel.Core;
using Windows.Foundation;
using Windows.Foundation.Collections;
using Windows.UI;
using Windows.UI.Popups;
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
    public sealed partial class ParchmentRequest : Page
    {
        /**
         * Page allowing student to apply for a parchment request
         **/
        // TODO: allow student to apply for parchment request. Add request to database
        // NOTE: student can only apply for a parchment once per qualification
        // NOTE: student can only apply for a parchment of qualification he/she is enrolled in

        private string StudentID;
        private string QualCode;

        public ParchmentRequest()
        {
            this.InitializeComponent();

            // formats title bar
            ApplicationViewTitleBar formattableTitleBar = ApplicationView.GetForCurrentView().TitleBar;
            formattableTitleBar.ButtonBackgroundColor = Colors.Transparent;
            formattableTitleBar.ButtonForegroundColor = Colors.White;
            CoreApplicationViewTitleBar coreTitleBar = CoreApplication.GetCurrentView().TitleBar;
            coreTitleBar.ExtendViewIntoTitleBar = true;
        }

        protected override void OnNavigatedTo(NavigationEventArgs e)
        {
            //base.OnNavigatedTo(e);
            string[] parameter = (string[])e.Parameter;
            StudentID = parameter[0];
            AutoPopulateDetails();
            AutoPopulateQualification();
        }

        private void AutoPopulateDetails()
        {
            MySqlConnection conn = new MySqlConnection(App.connectionString);

            StringBuilder sb = new StringBuilder();
            sb.Append("SELECT * FROM student WHERE StudentID  = '").Append(StudentID).Append("';");

            // Creates the SQL command
            MySqlCommand command = new MySqlCommand(sb.ToString(), conn);

            MySqlDataReader dr; // Creates a reader to read the data

            conn.Open(); // Open the connection

            dr = command.ExecuteReader(); // Execute the command and attach to the reader


            // While there are rows in the read            
            while (dr.Read())
            {
                tafeIdTxtbox.Text = dr.GetString("StudentID");
                firstNameTxtbox.Text = dr.GetString("GivenName");
                lastNameTxtbox.Text = dr.GetString("LastName");
                dobDatePicker.Date = dr.GetDateTime("DateOfBirth");
                emailTxtbox.Text = dr.GetString("EmailAddress");
                phoneTxtbox.Text = dr.GetString("PhoneNo");
            }

            conn.Close();
        }

        public void AutoPopulateQualification()
        {
            // Creates the connection
            MySqlConnection conn = new MySqlConnection(App.connectionString);

            StringBuilder sb = new StringBuilder();
            sb.Append("SELECT distinct q.NationalQualCode, q.QualName, q.QualCode FROM Student s ");
            sb.Append("INNER JOIN student_studyplan ss ON s.StudentID = ss.StudentID ");
            sb.Append("INNER JOIN Qualification q on ss.QualCode = q.QualCode ");
            sb.Append("WHERE (s.StudentID = '").Append(StudentID).Append("'); ");

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
                Qualification qualification = new Qualification(dr.GetString("QualCode"));

                qualification.QualCode = dr.GetString("QualCode");
                qualification.NationalQualCode = dr.GetString("NationalQualCode");
                qualification.QualName = dr.GetString("QualName");



                qualificationCmbbox.Items.Add(qualification);
                qualificationCmbbox.SelectedItem = qualificationCmbbox.Items[0];
                //QualCode = dr.GetString("QualCode");
                QualCode = ((Qualification)qualificationCmbbox.SelectedItem).QualCode;
            }

            // Close the connection
            conn.Close();
        }

        private async void SubmitRequestBtn_Click(object sender, RoutedEventArgs e)
        {
            var title = "Confirm Parchment Application";
            var content = "Your first and last name only will be printed on your AQF qualification parchment. \r\n\nBefore submitting your parchment application, please check your student account to confirm your legal name is entered correctly, and your postal address is current.  Freecall 1800 882 661 if you need help in updating your information. \r\n\nDo you want to continue Parchment Application?";

            var yesCommand = new UICommand("Confirm Application");
            var cancelCommand = new UICommand("Cancel");

            var dialog = new MessageDialog(content, title);
            dialog.Options = MessageDialogOptions.None;
            dialog.Commands.Add(yesCommand);

            dialog.DefaultCommandIndex = 0;
            dialog.CancelCommandIndex = 0;
            

            if (cancelCommand != null)
            {
                dialog.Commands.Add(cancelCommand);
                dialog.CancelCommandIndex = (uint)dialog.Commands.Count - 1;
            }

            var command = await dialog.ShowAsync();

            if (command == yesCommand)
            {
                string dt;
                DateTime date = DateTime.Now;
                dt = date.ToString("yyyy-MM-dd H:mm:ss");

                // Creates the connection
                MySqlConnection conn = new MySqlConnection(App.connectionString);

                StringBuilder sb = new StringBuilder();

                if (String.IsNullOrEmpty(lecturerNameTxtbox.Text) && String.IsNullOrEmpty(campusOfStudyTxtbox.Text))
                {
                    sb.Append("INSERT INTO parchment_request (DateApplied, student_StudentID1, qualification_QualCode, status) ");
                    sb.Append("VALUES ('").Append(dt).Append("', '").Append(StudentID).Append("', '").Append(QualCode).Append("', 'pending');");
                }
                else if (!String.IsNullOrEmpty(lecturerNameTxtbox.Text) && String.IsNullOrEmpty(campusOfStudyTxtbox.Text))
                {
                    sb.Append("INSERT INTO parchment_request (DateApplied, student_StudentID1, qualification_QualCode, status, NameOfLecturer) ");
                    sb.Append("VALUES ('").Append(dt).Append("', '").Append(StudentID).Append("', '").Append(QualCode).Append("', 'pending', '").Append(lecturerNameTxtbox.Text).Append("');");
                }
                else if (String.IsNullOrEmpty(lecturerNameTxtbox.Text) && !String.IsNullOrEmpty(campusOfStudyTxtbox.Text))
                {
                    sb.Append("INSERT INTO parchment_request (DateApplied, student_StudentID1, qualification_QualCode, status, CampusOfStudy) ");
                    sb.Append("VALUES ('").Append(dt).Append("', '").Append(StudentID).Append("', '").Append(QualCode).Append("', 'pending', '").Append(campusOfStudyTxtbox.Text).Append("');");
                }
                else if (!String.IsNullOrEmpty(lecturerNameTxtbox.Text) && !String.IsNullOrEmpty(campusOfStudyTxtbox.Text))
                {
                    sb.Append("INSERT INTO parchment_request (DateApplied, student_StudentID1, qualification_QualCode, status, CampusOfStudy, NameOfLecturer) ");
                    sb.Append("VALUES ('").Append(dt).Append("', '").Append(StudentID).Append("', '").Append(QualCode).Append("', 'pending', '").Append(campusOfStudyTxtbox.Text).Append("', '").Append(lecturerNameTxtbox.Text).Append("');");
                }

                // Creates the SQL command
                MySqlCommand myCommand = new MySqlCommand(sb.ToString(), conn);

                MySqlDataReader dr; // Creates a reader to read the data

                conn.Open(); // Open the connection

                dr = myCommand.ExecuteReader(); // Execute the command and attach to the reader

                Window.Current.Close();
            }
            else
            {
                // handle cancel command
            }
        }

        private void QualificationCmbbox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            QualCode = ((Qualification)qualificationCmbbox.SelectedItem).QualCode;
        }
    }
}
