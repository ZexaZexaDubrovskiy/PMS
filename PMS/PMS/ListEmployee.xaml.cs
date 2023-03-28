using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
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
using PMS.Base;

namespace PMS
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class ListEmployee : Window
    {
        //private Base.PMSEntities1 DataBase;
        private Base.Users User;
        PMSEntities DataBase = new PMSEntities();
        private int DlgMode;
        int clickFlag = 0;

        public ListEmployee(Base.Users User)
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
            AccountGrid.ItemsSource = SourceCore.MyBase.Users.ToList();
            EpmloyeeDlgLoad(false);

            if (User.id_rank == 1)
            {
                GridDlgLoad(true);
            } else
            {
                GridDlgLoad(false);
            }

        }

        public void EpmloyeeDlgLoad(bool b)
        {
            if (b == true)
            {
                EmployeeColumnChangeSecond.Width = new GridLength(0);
                //AccountGrid.IsHitTestVisible = false;
            }
            else
            {
                EmployeeColumnChangeSecond.Width = new GridLength(400);
                //AccountGrid.IsHitTestVisible = true;
            }

        }

        private void accountButton_Click(object sender, RoutedEventArgs e)
        {
            MainWindow window = new MainWindow(User);
            window.Show();
            Close();
        }



        private void AddEmployeeButton_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();
            if (string.IsNullOrEmpty(FIO.Text))
                errors.AppendLine("Укажите ФИО работника");
            if (EmployeeDepartment.SelectedItem == null)
                errors.AppendLine("Укажите отдел");
            if (EmployeeRank.SelectedItem == null)
                errors.AppendLine("Укажите должность");
            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }
            else
            {
                var NewEmployee = new Base.Users();

                NewEmployee.FIO = FIO.Text;
                NewEmployee.id_department = EmployeeDepartment.SelectedIndex + 1;
                NewEmployee.id_rank = EmployeeRank.SelectedIndex + 1;

                if (DlgMode == 0)
                {
                    SourceCore.MyBase.Users.Add(NewEmployee);
                }

                try
                {
                    SourceCore.MyBase.SaveChanges();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
                UpdateGrid(NewEmployee);
                EpmloyeeDlgLoad(false);
            }

        }

        public void UpdateGrid(Base.Users employee)
        {
            if ((employee == null) && (AccountGrid.ItemsSource != null))
            {
                employee = (Base.Users)AccountGrid.SelectedItem;
            }
            ObservableCollection<Base.Users> Employee =
            new ObservableCollection<Base.Users>(SourceCore.MyBase.Users.ToList());
            AccountGrid.ItemsSource = Employee;
            AccountGrid.SelectedItem = employee;
        }

        private void AddEmployeeRollbackButton_Click(object sender, RoutedEventArgs e)
        {
            EpmloyeeDlgLoad(false);
        }

        private void AddEmployee_Click(object sender, RoutedEventArgs e)
        {
            EpmloyeeDlgLoad(true);
            DlgMode = 0;
            AccountGrid.SelectedItem = null;
            clickFlag += 1;
            if (clickFlag % 2 == 0)
            {
                EpmloyeeDlgLoad(false);
            }
        }

        private void DeleteButtonBoat_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("Удалить запись?", "Внимание", MessageBoxButton.OKCancel, MessageBoxImage.Warning) == MessageBoxResult.OK)
            {
                try
                {
                    Base.Users DeletingBoat = (Base.Users)AccountGrid.SelectedItem;
                    if (AccountGrid.SelectedIndex < AccountGrid.Items.Count - 1)
                    {
                        AccountGrid.SelectedIndex++;
                    }
                    else
                    {
                        if (AccountGrid.SelectedIndex > 0)
                        {
                            AccountGrid.SelectedIndex--;
                        }
                    }
                    Base.Users SelectingBoat = (Base.Users)AccountGrid.SelectedItem;
                    SourceCore.MyBase.Users.Remove(DeletingBoat);
                    SourceCore.MyBase.SaveChanges();
                    UpdateGrid(SelectingBoat);
                }
                catch
                {
                    MessageBox.Show("Невозможно удалить запись, так как она используется в других справочниках базы данных.",
                    "Предупреждение", MessageBoxButton.OK, MessageBoxImage.Warning, MessageBoxResult.None);
                }
            }
        }
        private string FIO_buf;
        private string emplDep_buf;
        private string emplRank_buf;
        private void CopyButton_Click(object sender, RoutedEventArgs e)
        {
            if (AccountGrid.SelectedItem != null)
            {
                EpmloyeeDlgLoad(true);
                DlgMode = 0;
                EmployeeLabel.Content = "Копировать запись";
                AddEmployeeButton.Content = "Копировать";

                FIO_buf = FIO.Text;
                emplDep_buf = EmployeeDepartment.Text;
                emplRank_buf = EmployeeRank.Text;

                AccountGrid.SelectedItem = null;
                FIO.Text = FIO_buf;
                EmployeeDepartment.Text = emplDep_buf;
                EmployeeRank.Text = emplRank_buf;
            }
            else
            {
                MessageBox.Show("Не выбрано ни одной строки!", "Сообщение", MessageBoxButton.OK);
            }
        }

        private void EditButton_Click(object sender, RoutedEventArgs e)
        {
            if (AccountGrid.SelectedItem != null)
            {
                EpmloyeeDlgLoad(true);
                EmployeeLabel.Content = "Изменить лодку";
                AddEmployeeButton.Content = "Изменить";
                DlgMode = 1;
            }
            else
            {
                MessageBox.Show("Не выбрано ни одной строки!", "Сообщение", MessageBoxButton.OK);
            }
        }


        public void GridDlgLoad(bool b)
        {
            if (b == true)
            {
                ColumnChange.Height = new GridLength(100);
                AccountGrid.IsHitTestVisible = false;
            }
            else
            {
                ColumnChange.Height = new GridLength(0);
                AccountGrid.IsHitTestVisible = true;
            }
        }

        private void exitButton_Click(object sender, RoutedEventArgs e) => Close();
        
    }
}
