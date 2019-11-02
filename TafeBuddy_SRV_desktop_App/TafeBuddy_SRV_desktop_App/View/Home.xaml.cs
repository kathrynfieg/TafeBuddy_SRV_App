using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
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
using Windows.UI.Xaml.Media.Imaging;
using Windows.UI.Xaml.Navigation;

// The Blank Page item template is documented at https://go.microsoft.com/fwlink/?LinkId=234238

namespace TafeBuddy_SRV_desktop_App.View
{
    /// <summary>
    /// An empty page that can be used on its own or navigated to within a Frame.
    /// </summary>
    public sealed partial class Home : Page
    {
        public Home()
        {
            this.InitializeComponent();

            // formats title bar
            ApplicationViewTitleBar formattableTitleBar = ApplicationView.GetForCurrentView().TitleBar;
            formattableTitleBar.ButtonBackgroundColor = Colors.Transparent;
            formattableTitleBar.ButtonForegroundColor = Colors.White;
            CoreApplicationViewTitleBar coreTitleBar = CoreApplication.GetCurrentView().TitleBar;
            coreTitleBar.ExtendViewIntoTitleBar = true;

            // Show user logged in
            welcomeTxtBlock.Text = "Welcome, " + App.userLogged_firstName + " " + App.userLogged_lastName; // Show user logged
            if (App.userLogged_profileImage != "")
            {
                userProfileImage.ProfilePicture = new BitmapImage(new Uri("ms-appx:///Assets" + App.userLogged_profileImage));
            }
            else
            {
                userProfileImage.DisplayName = App.userLogged_firstName + " " + App.userLogged_lastName;
            }
            userNameTxtBlk.Text = App.userLogged_lastName.ToUpper() + ", " + App.userLogged_firstName;
            userIdTxtBlk.Text = App.userLogged_id;
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
         * Button to navigate to SRV
         **/
        private void StudentResultsViewBtn_Click(object sender, RoutedEventArgs e)
        {
            this.Frame.Navigate(typeof(View.SRV_Student));
        }
    }
}
