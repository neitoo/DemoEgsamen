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
using RentalPointCPKiOv2.window;
using RentalPointCPKiOv2.Model;
using RentalPointCPKiOv2.Database;
using RentalPointCPKiOv2.Class;
using System.Data.SqlClient;

namespace RentalPointCPKiOv2.window
{
    /// <summary>
    /// Логика взаимодействия для LoginUserWindow.xaml
    /// </summary>
    public partial class LoginUserWindow : Window
    {
        public LoginUserWindow()
        {
            InitializeComponent();
        }

        private void LoginBtn_Click(object sender, RoutedEventArgs e)
        {
            var login = DatabaseEntity.DBEntity.RenPointEnt.Staff.Where(u => u.Login == emailBox.Text && u.Password == passwordBox.Password).FirstOrDefault();

            

            if (login == null) MessageBox.Show("Не верный логин или пароль.");
            else
            {
                switch (login.Post)
                {
                    case 1:
                        ClassWindow.createAdminWindow(login).Show();
                        this.Close();
                        break;
                    case 2:
                        ClassWindow.createOldShiftWindow(login).Show();
                        this.Close();
                        break;
                    case 3:
                        ClassWindow.createSellerWindow(login).Show();
                        this.Close();
                        break;
                }
            }
            
        }

        private void userLoginTb_MouseDown(object sender, MouseButtonEventArgs e)
        {
            MessageBox.Show("Я клиент");
        }

        private void showPassword_Checked(object sender, RoutedEventArgs e)
        {
            passwordTb.Text = passwordBox.Password;
            borderPasBox.Visibility = Visibility.Collapsed;
            borderPasTb.Visibility = Visibility.Visible;
        }

        private void showPassword_Unchecked(object sender, RoutedEventArgs e)
        {
            passwordBox.Password = passwordTb.Text;
            borderPasBox.Visibility = Visibility.Visible;
            borderPasTb.Visibility = Visibility.Collapsed;
        }
    }
}
