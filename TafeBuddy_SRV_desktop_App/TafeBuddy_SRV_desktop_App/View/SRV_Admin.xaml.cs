using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
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
        public SRV_Admin()
        {
            this.InitializeComponent();

            // formats the title bar
            ApplicationViewTitleBar formattableTitleBar = ApplicationView.GetForCurrentView().TitleBar;
            formattableTitleBar.ButtonBackgroundColor = Colors.Transparent;
            formattableTitleBar.ButtonForegroundColor = Colors.Black;
            CoreApplicationViewTitleBar coreTitleBar = CoreApplication.GetCurrentView().TitleBar;
            coreTitleBar.ExtendViewIntoTitleBar = true;
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
        private void SearchStudentIDTxtbox_Click(object sender, RoutedEventArgs e)
        {
            detailsStackPanel.Visibility = Visibility.Visible;
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
    }
}
