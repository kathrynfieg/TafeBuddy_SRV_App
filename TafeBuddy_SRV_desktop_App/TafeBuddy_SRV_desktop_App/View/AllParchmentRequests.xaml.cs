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
    public sealed partial class AllParchmentRequests : Page
    {
        /**
         * Page allowing user to view all parhcment requests
         **/
        // TODO: List of all student parhcment request
        // details include: student name, id, qualification requested

        private ObservableCollection<ParchmentRequestModel> PendingRequests = new ObservableCollection<ParchmentRequestModel>();
        int pendingRequests = 0;

        public AllParchmentRequests()
        {
            this.InitializeComponent();

            // formats title bar
            ApplicationViewTitleBar formattableTitleBar = ApplicationView.GetForCurrentView().TitleBar;
            formattableTitleBar.ButtonBackgroundColor = Colors.Transparent;
            formattableTitleBar.ButtonForegroundColor = Colors.White;
            CoreApplicationViewTitleBar coreTitleBar = CoreApplication.GetCurrentView().TitleBar;
            coreTitleBar.ExtendViewIntoTitleBar = true;

            DisplayAllPendingRequests();
        }

        public void DisplayAllPendingRequests()
        {
            MySqlConnection conn = new MySqlConnection(App.connectionString);

            StringBuilder sb = new StringBuilder();
            sb.Append("SELECT s.StudentID, s.GivenName, s.LastName, q.NationalQualCode, q.QualName, pr.DateApplied, pr.status, pr.parchmentRequestNo");
            sb.Append(" FROM student s INNER JOIN parchment_request pr ON s.StudentID = pr.student_StudentID1");
            sb.Append(" INNER JOIN qualification q ON q.QualCode = pr.qualification_QualCode");
            sb.Append(" WHERE pr.status = 'pending'");
            sb.Append(" ORDER BY pr.DateApplied;");

            // Creates the SQL command
            MySqlCommand command = new MySqlCommand(sb.ToString(), conn);

            MySqlDataReader dr; // Creates a reader to read the data

            conn.Open(); // Open the connection

            dr = command.ExecuteReader(); // Execute the command and attach to the reader


            // While there are rows in the read            
            while (dr.Read())
            {
                // string subjectdesc = dr.GetString("SubjectDescription");
                string requestID = dr.GetString("parchmentRequestNo");
                string studId = dr.GetString("StudentID");
                string givenName = dr.GetString("GivenName");
                string lastName = dr.GetString("LastName");
                string reqQual = dr.GetString("NationalQualCode") + " " + dr.GetString("QualName");
                string dateApplied = dr.GetString("DateApplied").ToString();
                string status = dr.GetString("status");

                pendingRequests++;

                ParchmentRequestModel request = new ParchmentRequestModel(requestID, studId, givenName, lastName, reqQual, dateApplied, status);
                PendingRequests.Add(request);

            }

            conn.Close();
        }
    }
}
