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
    enum UserType
    {
        Student = 0,
        Staff = 1,
        Unknown = -1
    }

    /// <summary>
    /// An empty page that can be used on its own or navigated to within a Frame.
    /// </summary>
    public sealed partial class Login : Page
    {
        public Login()
        {
            this.InitializeComponent();

            // formats title bar
            ApplicationViewTitleBar formattableTitleBar = ApplicationView.GetForCurrentView().TitleBar;
            formattableTitleBar.ButtonBackgroundColor = Colors.Transparent;
            formattableTitleBar.ButtonForegroundColor = Colors.White;
            CoreApplicationViewTitleBar coreTitleBar = CoreApplication.GetCurrentView().TitleBar;
            coreTitleBar.ExtendViewIntoTitleBar = true;
        }

        /**
         * Method to get user type (student or lecturer)
         **/
        private UserType LoginUser(string user, string pass)
        {
            // Creates the connection
            MySqlConnection conn = new MySqlConnection(App.connectionString);

            // Construct the SELECT statement
            StringBuilder sb = new StringBuilder();
            sb.Append("SELECT * FROM student ");
            sb.Append("WHERE EmailAddress = '").Append(user).Append("' ");
            sb.Append(" OR StudentID = '").Append(user).Append("' ");
            sb.Append("; "); // Note that there are TWO select statement in the same string. Use the semi-colon to split them
            sb.Append("SELECT * FROM lecturer ");
            sb.Append("WHERE EmailAddress = '").Append(user).Append("' ");
            sb.Append(" OR LecturerID = '").Append(user).Append("' ");

            // Creates the SQL commands
            MySqlCommand command = new MySqlCommand(sb.ToString(), conn);

            MySqlDataReader dr; // Creates a reader to read the data

            string passCompare = ""; // Variable to store the password from the DataBase
            UserType result = UserType.Unknown; // Variable to store the result of this method

            conn.Open(); // Open the connection to execute the Student Select
            dr = command.ExecuteReader(); // Execute the command and attach to the reader

            // Because I've put the select from Student First. I will check for student
            // Check if there are rows in the Student Select
            if (dr.HasRows)
            {
                // If so, get the password in the database
                while (dr.Read())
                {
                    // Get the student id from DataBase
                    passCompare = dr.GetString("StudentID");
                }
                if (passCompare == pass)
                {
                    result = UserType.Student;
                    App.userLogged_id = dr.GetString("StudentID");
                    App.userLogged_firstName = dr.GetString("GivenName");
                    App.userLogged_lastName = dr.GetString("LastName");
                }
            }
            else
            {
                // If there are no rows in the Student, check the Staff select using the NextResult() method
                // Make sure that there is more results
                if (dr.NextResult())
                {
                    // Check if there are rows in the new result
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            // Get the student password from DataBase
                            passCompare = dr.GetString("LecturerID");
                        }
                        if (passCompare == pass)
                        {
                            result = UserType.Staff;
                            App.userLogged_id = dr.GetString("LecturerID");
                            App.userLogged_firstName = dr.GetString("GivenName");
                            App.userLogged_lastName = dr.GetString("LastName");
                        }
                    }
                }


            }

            return result; // Return the result
        }

        /**
         * Login button
         * Able to distinguish between a student user and lecturer user
         **/
        // TODO: Login - student and lecturer
        private async void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            MessageDialog msg;
            if (String.IsNullOrEmpty(usernameTextBox.Text) && String.IsNullOrEmpty(passwordTextBox.Password))
            {
                msg = new MessageDialog("Please enter Username and Password");
                await msg.ShowAsync();
                return;
            }
            else if (String.IsNullOrEmpty(usernameTextBox.Text))
            {
                msg = new MessageDialog("Please Enter Username");
                await msg.ShowAsync();
                return;
            }
            else if (String.IsNullOrEmpty(passwordTextBox.Password))
            {
                msg = new MessageDialog("Please Enter Password");
                await msg.ShowAsync();
                return;
            }

            string user = usernameTextBox.Text;
            string pass = passwordTextBox.Password;

            UserType result = LoginUser(user, pass);

            if (result == UserType.Student)
            {
                this.Frame.Navigate(typeof(View.Home));
            }
            else if (result == UserType.Staff)
            {
                this.Frame.Navigate(typeof(View.Home_Admin));
            }
            else
            {
                msg = new MessageDialog("Incorrect Login Details. Please Try again.");
                await msg.ShowAsync();
                return;
            }


        }

    }
}
