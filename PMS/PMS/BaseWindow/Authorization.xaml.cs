using System;
using System.Collections.Generic;
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
using System.Windows.Shapes;

namespace PMS.BaseWindow
{
    /// <summary>
    /// Interaction logic for Authorization.xaml
    /// </summary>
    public partial class Authorization : Window
    {
        private Base.PMSEntities DataBase;
        //конструктор
        public Authorization()
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

        }

        private void signInButton_Click(object sender, RoutedEventArgs e)
        {
            Base.Users User = DataBase.Users.SingleOrDefault(U => U.login == TextBox_Login.Text && U.password == PasswordBox_Password.Password);

            if (User != null)
            {

                ListEmployee window = new ListEmployee(User);
                window.Show();
                Close();
            }
            else
            {
                MessageBox.Show("Неверно указан логин и/или пароль!", "Предупреждение", MessageBoxButton.OK, MessageBoxImage.Warning);
            };
        }
    }
}
