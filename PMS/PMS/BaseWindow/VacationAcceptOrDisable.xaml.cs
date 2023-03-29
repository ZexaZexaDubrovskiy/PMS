using PMS.Base;
using System.Collections.Generic;
using System.Linq;
using System.Windows;

namespace PMS.BaseWindow
{
    public partial class VacationAcceptOrDisable : Window
    {
        public Users User { get; set; }
        private List<int> allowedRanks = new List<int>() { 1 };
        private List<timeOff> timeoffs = SourceCore.MyBase.timeOff.ToList();
        private int i = -1;

        public VacationAcceptOrDisable() => InitializeComponent();

        public void Ininitalize()
        {
            if(allowedRanks.IndexOf((int)User.id_rank) == -1) Close();

            GetNext();
        }

        private void DisplayRequest(timeOff timeoff)
        {
            Label_DateStart.Content = timeoff.fromDate;
            Label_DateEnd.Content = timeoff.toDate;
            Label_DaysCount.Content = timeoff.toDate - timeoff.fromDate;
            int tti = (int)timeoff.timeType_id;
            Label_TimeOffType.Content = SourceCore.MyBase.timeType.First(timetype => timetype.id == tti).type;
            Label_Reason.Content = timeoff.reason;
        }

        private void GetNext()
        {
            i++;
            while (i < timeoffs.Count && timeoffs[i].approved == true) i++;

            if (i == timeoffs.Count) Close();
            else DisplayRequest(timeoffs[i]);
        }

        private void ButtonClick_Ignore(object sender, RoutedEventArgs e) => GetNext();

        private void ButtonClick_Approve(object sender, RoutedEventArgs e)
        {
            timeoffs[i].approved = true;
            SourceCore.MyBase.SaveChanges();
            GetNext();
        }
    }
}