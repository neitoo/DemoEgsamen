using RentalPointCPKiOv2.Class;
using RentalPointCPKiOv2.Model;
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
using RentalPointCPKiOv2.Database;
using RentalPointCPKiOv2.Model;

namespace RentalPointCPKiOv2.window
{
    /// <summary>
    /// Логика взаимодействия для OldShiftWindow.xaml
    /// </summary>
    public partial class OldShiftWindow : Window
    {
        private Orders _orders;
        public OldShiftWindow(Staff user)
        {
            InitializeComponent();

            OrdersDataGrid.ItemsSource = DatabaseEntity.DBEntity.RenPointEnt.Orders.ToList();

            DataContext = user;
        }

        private void quitAccBtn_Click(object sender, RoutedEventArgs e)
        {
            ClassWindow.createLoginWindow().Show();
            this.Close();
        }

        private void listClientBtn_Click(object sender, RoutedEventArgs e)
        {
            ClassWindow.createListClientWindow().Show();
        }

        private void closeOrderBtn_Click(object sender, RoutedEventArgs e)
        {
            var orderSelected = (sender as Button).DataContext as Orders;
            ClassWindow.createChangeDataWindow(orderSelected, this).Show();
        }
    }
}
