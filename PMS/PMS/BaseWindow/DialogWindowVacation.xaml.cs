using PMS.Base;
using System.Linq;
using System.Windows;

namespace PMS.BaseWindow
{
    public partial class DialogWindowVacation : Window
    {
        public Users User { get; set; }
        private timeType[] timeTypes;
        private timeOff curTimeOff;

        public DialogWindowVacation()
        {
            InitializeComponent();
        }

        /// <summary>
        /// Call only after "User" property set
        /// </summary>
        public void Initialize()
        {
            timeTypes = SourceCore.MyBase.timeType.ToArray();
            DateComboBoxTimeType.ItemsSource = timeTypes;
            DateComboBoxTimeType.SelectedIndex = 0;

            curTimeOff = null;
        }

        private void UpdateDaysCountLabel()
        {
            if (datePickerFrom.SelectedDate != null && datePickerTo.SelectedDate != null)
                Label_DaysCount.Content = datePickerTo.SelectedDate - datePickerFrom.SelectedDate;
        }

        private void datePickerFrom_SelectedDateChanged(object sender, System.Windows.Controls.SelectionChangedEventArgs e) => UpdateDaysCountLabel();

        private void datePickerTo_SelectedDateChanged(object sender, System.Windows.Controls.SelectionChangedEventArgs e) => UpdateDaysCountLabel();

        private void ButtonClick_Cancel(object sender, RoutedEventArgs e) => Close();

        private void ButtonClick_Send(object sender, RoutedEventArgs e)
        {
            curTimeOff = new timeOff();
            curTimeOff.user_id = User.id;
            curTimeOff.timeType_id = DateComboBoxTimeType.SelectedIndex + 1;
            curTimeOff.reason = TextBox_Reason.Text;
            curTimeOff.approved = false;
            curTimeOff.fromDate = datePickerFrom.DisplayDate;
            curTimeOff.toDate = datePickerTo.DisplayDate;
            SourceCore.MyBase.timeOff.Add(curTimeOff);
            MessageBox.Show(SourceCore.MyBase.SaveChanges().ToString());
            Close();
        }
    }
}