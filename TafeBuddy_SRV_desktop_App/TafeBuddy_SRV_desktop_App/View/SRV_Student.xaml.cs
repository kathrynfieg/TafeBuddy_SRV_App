using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using System.Text;
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
    // Class created to handle the object in the ComboBox
    class Item
    {
        public string Id;
        public string Value;
        public Item(string id, string value)
        {
            Id = id;
            Value = value;
        }
        public override string ToString()
        {
            return Value; // The ComboBox actually uses the ToString method to display the text in the control
        }
    }

    /// <summary>
    /// An empty page that can be used on its own or navigated to within a Frame.
    /// </summary>
    public sealed partial class SRV_Student : Page
    {
        private string User = "";
        private static string StudentID;

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
        }
    }
}
