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

    /// <summary>
    /// An empty page that can be used on its own or navigated to within a Frame.
    /// </summary>
    public sealed partial class Login : Page
    {
        public Login()
        {
            this.InitializeComponent();

            ApplicationViewTitleBar formattableTitleBar = ApplicationView.GetForCurrentView().TitleBar;
            formattableTitleBar.ButtonBackgroundColor = Colors.Transparent;
            formattableTitleBar.ButtonForegroundColor = Colors.White;
            CoreApplicationViewTitleBar coreTitleBar = CoreApplication.GetCurrentView().TitleBar;
            coreTitleBar.ExtendViewIntoTitleBar = true;
        }
        
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
            
            if(usernameTextBox.Text == "kathryn.fieg@student.tafesa.edu.au")
            {
                this.Frame.Navigate(typeof(View.Home));
            }
            else if (usernameTextBox.Text == "julie.ruiz@tafesa.edu.au" || usernameTextBox.Text == "lecturer")
            {
                this.Frame.Navigate(typeof(View.Home_Admin));
            }
            else
            {
                msg = new MessageDialog("Incorrect Login Details");
                await msg.ShowAsync();
                return;
            }

        }

    }
}
