using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Xml;
using PMS.BaseWindow;

namespace PMS
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private Base.PMSEntities DataBase;
        private Base.Users User;

        public class WorkInformation
        {
            public DateTime? DateWork { get; set; }
            public TimeSpan? TimeStart { get; set; }
            public TimeSpan? TimeEnd { get; set; }
            public TimeSpan? TimeDinner { get; set; }
            public TimeSpan? FullTimeWork { get; set; }
        }
        public class DateInformation
        {
            public DateTime? Date { get; set; }
        }

        public ObservableCollection<WorkInformation> WorkInformations;
        public ObservableCollection<DateInformation> DateInformations;
        public MainWindow(Base.Users User)
        {
            InitializeComponent();
            try
            {
                DataBase = new Base.PMSEntities();
            }
            catch
            {
                MessageBox.Show("Не удалось подключиться к базе данных. Проверьте настройки подключения приложения.",
                    "Предупреждение", MessageBoxButton.OK, MessageBoxImage.Warning);
                Close();
            }
            this.User = User;
            ShowUserContent();
        }

        private void FillDate()
        {
            DateInformations = new ObservableCollection<DateInformation>();
            WorkInformations = new ObservableCollection<WorkInformation>();
            for (int i = 0; i <= 30; i++)
            {
                DateInformations.Add(new DateInformation
                {
                    Date = DateTime.Now.AddDays(i).Date
                });

                WorkInformations.Add(new WorkInformation
                {
                    DateWork = DateTime.Now.AddDays(i).Date
                });
            }
            AccountGrid.ItemsSource = WorkInformations;
            DateGrid.ItemsSource = DateInformations;
        }

        private void ShowUserContent()
        {
            UpdateGridS(null);
            NameLabel.Content = Regex.Replace(User.FIO, @"(?<=\S\s+\b)([А-ЯЁ])[а-яё]+", @"$1.");
            DateBirthdayLabel.Content = $"Дата рождения: {User.dateOfBirth?.ToString("dd/MM/yyyy")}";
            DateComingLabel.Content = $"Дата поступления: {User.dateComing?.ToString("dd/MM/yyyy")}";

            var s = (from p in DataBase.Users
                     join c in DataBase.employeeDepartment on p.id_department equals c.id
                     where (User.id_department == c.id)
                     select new
                     {
                         depName = c.department
                     });

            foreach (var item in s)
            {
                DepatamentTextBlock.Text = "Отдел: " + item.depName;
            }

            var b = (from p in DataBase.Users
                     join c in DataBase.employeeRank on p.id_rank equals c.id
                     where (User.id_rank == c.id)
                     select new
                     {
                         rankName = c.rank
                     });

            foreach (var item in b)
            {
                RankTextBlock.Text = "Должность: " + item.rankName;
            }
        }
        private void UpdateGridS(WorkInformation WorkInformation)
        {
            FillDate();
            if ((WorkInformation == null) && (AccountGrid.ItemsSource != null))
            {
                WorkInformation = (WorkInformation)AccountGrid.SelectedItem;
            }
            var s = (from p in SourceCore.MyBase.Users
                     join c in SourceCore.MyBase.timeOff on p.id equals c.user_id
                     where (User.id == p.id)
                     select new
                     {
                         DateWork = c.toDate,
                         TimeStart = c.workDayBegin,
                         TimeEnd = c.workDayEnd,
                         TimeDinner = c.dinnerBegin,
                         FullTimeWork = new TimeSpan(0, 0, 0)
                     });
            //WorkInformations = new ObservableCollection<WorkInformation>();
            foreach (var item in s)
            {
                for (int i = 0; i <= 30; i++)
                {
                    Console.WriteLine(DateInformations[i].Date);
                    //Console.WriteLine(item.DateWork);
                    if (WorkInformations[i].DateWork == item.DateWork)
                    {
                        WorkInformations[i] = (new WorkInformation
                        {
                            DateWork = item.DateWork,
                            TimeStart = item.TimeStart,
                            TimeEnd = item.TimeEnd,
                            TimeDinner = item.TimeDinner,
                            FullTimeWork = item.TimeEnd - item.TimeStart
                        });
                    }
                }
            }
            AccountGrid.ItemsSource = WorkInformations;
        }

        private void signInButton_Click(object sender, RoutedEventArgs e)
        {
            ListEmployee window = new ListEmployee(User);
            window.Show();
            Close();
        }

        private void addVacationButton_Click(object sender, RoutedEventArgs e)
        {
            DialogWindowVacation dwVacation = new DialogWindowVacation();
            dwVacation.User = this.User;
            dwVacation.Show();
            dwVacation.Initialize();
        }
    }
}
