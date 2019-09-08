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

        public SRV_Student()
        {
            this.InitializeComponent();

            ApplicationViewTitleBar formattableTitleBar = ApplicationView.GetForCurrentView().TitleBar;
            formattableTitleBar.ButtonBackgroundColor = Colors.Transparent;
            formattableTitleBar.ButtonForegroundColor = Colors.Black;
            CoreApplicationViewTitleBar coreTitleBar = CoreApplication.GetCurrentView().TitleBar;
            coreTitleBar.ExtendViewIntoTitleBar = true;
        }
        

        private void LogoutHyperlink_Click(object sender, RoutedEventArgs e)
        {
            this.Frame.Navigate(typeof(View.Login));
        }

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

        //private async void LookupQualBtn_Click(object sender, RoutedEventArgs e)
        //{
        //    //this.Frame.Navigate(typeof(View.QualificationLookup));
        //    CoreApplicationView newView = CoreApplication.CreateNewView();
        //    int newViewId = 0;
        //    await newView.Dispatcher.RunAsync(CoreDispatcherPriority.Normal, () =>
        //    {
        //        Frame frame = new Frame();
        //        frame.Navigate(typeof(View.QualificationLookup), null);
        //        Window.Current.Content = frame;
        //        // You have to activate the window in order to show it later.
        //        Window.Current.Activate();

        //        newViewId = ApplicationView.GetForCurrentView().Id;
        //    });
        //    bool viewShown = await ApplicationViewSwitcher.TryShowAsStandaloneAsync(newViewId);
        //}

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
            if (qualificationCmbbox.SelectedItem.ToString() == "Certificate IV in Programming")
            {
                progressPercent.Value = 100;
                txtProgressPercent.Text = "100%";
                completedUnitsTxtBlk.Text = "Completed: 16";
                ongoingUnisTxtblk.Text = "Ongoing: 0";
            }
            else
            {
                progressPercent.Value = 75;
                txtProgressPercent.Text = "75%";
                completedUnitsTxtBlk.Text = "Completed: 12";
                ongoingUnisTxtblk.Text = "Ongoing: 4";
            }
        }
    }
}
