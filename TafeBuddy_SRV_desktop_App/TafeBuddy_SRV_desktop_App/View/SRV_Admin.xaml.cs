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
    public sealed partial class SRV_Admin : Page
    {
        private static string User;
        private static string StudentID;

        private ObservableCollection<StudentGrade> Results = new ObservableCollection<StudentGrade>();

        public SRV_Admin()
        {
            this.InitializeComponent();

            // formats the title bar
            ApplicationViewTitleBar formattableTitleBar = ApplicationView.GetForCurrentView().TitleBar;
            formattableTitleBar.ButtonBackgroundColor = Colors.Transparent;
            formattableTitleBar.ButtonForegroundColor = Colors.Black;
            CoreApplicationViewTitleBar coreTitleBar = CoreApplication.GetCurrentView().TitleBar;
            coreTitleBar.ExtendViewIntoTitleBar = true;

            welcomeTxtBlock.Text = "Welcome, " + App.userLogged_firstName + " " + App.userLogged_lastName;
        }

        public async void CheckStudentID(string id)
        {
            PopulateUser(id);

            if (StudentID != null)
            {
                //PopulateAreasOfStudy();
                //areaOfStudcomboBox.SelectedIndex = areaIndex;
                //comboBox.SelectedIndex = qualIndex;
                PopulateQualification();
                DisplayStudentResults(StudentID);
                detailsStackPanel.Visibility = Visibility.Visible;
            }
            else
            {
                MessageDialog msg = new MessageDialog("Student ID does not exist. Please enter correct Student ID.");
                await msg.ShowAsync();
                ClearFields();
                detailsStackPanel.Visibility = Visibility.Collapsed;
                return;
            }
        }

        public void PopulateUser(string searchID)
        {
            // Creates the connection
            MySqlConnection conn = new MySqlConnection(App.connectionString);
            // Creates the SQL command
            MySqlCommand command = new MySqlCommand("SELECT * FROM student WHERE StudentID = '" + searchID + "'", conn);

            MySqlDataReader dr; // Creates a reader to read the data

            conn.Open(); // Open the connection

            dr = command.ExecuteReader(); // Execute the command and attach to the reader

            // While there are rows in the read
            while (dr.Read())
            {
                User = dr.GetString("StudentID"); // Stores the StudentID to use in the Competences page
                StudentID = dr.GetString("StudentID");
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
            sb.Append("SELECT distinct q.NationalQualCode, q.QualName FROM Student s ");
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
                qualificationCmbbox.Items.Add(new Item(dr.GetString("NationalQualCode"), "(" + dr.GetString("NationalQualCode") + ") " + dr.GetString("QualName")));
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

        public void ClearFields()
        {
            studentIdTxtbox.Text = "";
            qualificationCmbbox.Items.Clear();
            studentIdTxtbox.Text = "";
            studentNameTxtbox.Text = "";
            studentEmailTxtbox.Text = "";
            txtProgressPercent.Text = "0%";
            totalunitsTxtBlock.Text = "Total units: 0";
            completedUnitsTxtBlk.Text = "Completed: 0";
            ongoingUnisTxtblk.Text = "Ongoing: 0";
            futureUnitsTxtblk.Text = "Future: 0";
            detailsStackPanel.Visibility = Visibility.Collapsed;
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
         * Respond to Parchment Request Button
         * A popup shows up allowing user to confirm or deny a parchment request
         * Note: only visible when student has applied for parchment
         **/
        // TODO: allow user to confirm or deny a parchment request
        private async void RespondToParchmentRequestBtn_Click(object sender, RoutedEventArgs e)
        {
            //respondToParchmentRequestBtn.Visibility = Visibility.Collapsed;
            var title = "Student Parchment Request";
            var content = "Student ID:\t 001061267 " +
                          "\r\nStudent Name:\t Kathryn Fieg" +
                          "\r\n\nRequested Parchment Qualification: \r\nCertificate IV in Programming";

            var yesCommand = new UICommand("Accept");
            var noCommand = new UICommand("Deny");
            var cancelCommand = new UICommand("Cancel");

            var dialog = new MessageDialog(content, title);
            dialog.Options = MessageDialogOptions.None;
            dialog.Commands.Add(yesCommand);

            dialog.DefaultCommandIndex = 0;
            dialog.CancelCommandIndex = 0;

            if (noCommand != null)
            {
                dialog.Commands.Add(noCommand);
                dialog.CancelCommandIndex = (uint)dialog.Commands.Count - 1;
            }

            if (cancelCommand != null)
            {
                dialog.Commands.Add(cancelCommand);
                dialog.CancelCommandIndex = (uint)dialog.Commands.Count - 1;
            }

            var command = await dialog.ShowAsync();

            if (command == yesCommand)
            {
                respondToParchmentRequestBtn.Visibility = Visibility.Collapsed;
            }
            else if (command == noCommand)
            {
                respondToParchmentRequestBtn.Visibility = Visibility.Collapsed;
            }
            else
            {
                // handle cancel command
            }
        }

        /**
         * Search student button
         **/
         // TODO: Search student
         // TODO: Fill student details
         // TODO: Competency Checklist
         // TODO: Subject Results List
         // TODO: Progress Bar (including: Total, taken, ongoing, future units)
         // TODO: check if student has applied for parchment request - make parchement response button visible
        private async void SearchStudentIDTxtbox_Click(object sender, RoutedEventArgs e)
        {
            //detailsStackPanel.Visibility = Visibility.Visible;
            if (studentIdTxtbox.Text.Length == 0)
            {
                MessageDialog msg = new MessageDialog("Please enter student ID.");
                await msg.ShowAsync();
                ClearFields();
                return;
            }

            StudentID = null; // Clean studentID to search for another one
            CheckStudentID(studentIdTxtbox.Text.Trim());
        }

        /**
         * Button to open page (View.AllParchmentRequests)
         * allowing user to view all (list) parchment requests
         * details include: student Name, Id, Qualification requested
         **/
        private async void ViewAllParchmentRequetsBtn_Click(object sender, RoutedEventArgs e)
        {
            CoreApplicationView newView = CoreApplication.CreateNewView();
            int newViewId = 0;
            await newView.Dispatcher.RunAsync(CoreDispatcherPriority.Normal, () =>
            {
                Frame frame = new Frame();
                frame.Navigate(typeof(View.AllParchmentRequests), null);
                Window.Current.Content = frame;
                // You have to activate the window in order to show it later.
                Window.Current.Activate();

                newViewId = ApplicationView.GetForCurrentView().Id;
            });
            bool viewShown = await ApplicationViewSwitcher.TryShowAsStandaloneAsync(newViewId);
        }

        /**
         * Button to open page
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
        }

        private void HomeBtnAppBar_Click(object sender, RoutedEventArgs e)
        {
            this.Frame.Navigate(typeof(View.Home_Admin));
        }
    }
}
