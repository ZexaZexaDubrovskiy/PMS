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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace PMS
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class ListEmployee : Window
    {
        private Base.PMSEntities DataBase;
        private Base.Users User;
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
        }

        private void accountButton_Click(object sender, RoutedEventArgs e)
        {
            MainWindow window = new MainWindow(User);
            window.Show();
            Close();
        }
    }
}
