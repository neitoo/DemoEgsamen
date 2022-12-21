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
using RentalPointCPKiOv2.Model;
using RentalPointCPKiOv2.Database;

namespace RentalPointCPKiOv2.window
{
    /// <summary>
    /// Логика взаимодействия для ChangeDataWindow.xaml
    /// </summary>
    public partial class ChangeDataWindow : Window
    {
        OldShiftWindow _oldShiftWindow;
        Orders _orders;
        public ChangeDataWindow(Orders orders, OldShiftWindow oldShift)
        {
            InitializeComponent();

            this._oldShiftWindow = oldShift;
            this._orders = orders;
            dateTb.Text = orders.DateCloseSplit.ToString();
        }

        private void saveDataBtn_Click(object sender, RoutedEventArgs e)
        {
            var dialogResult = MessageBox.Show("Вы действительно хотите закрыть заказ?", "Предупреждение", MessageBoxButton.YesNo);

            if (dialogResult == MessageBoxResult.Yes)
            {
                if (dateTb.Text == "") _orders.DateClose = null;
                else
                {
                    _orders.Status = "Закрыта";
                    _orders.DateClose = DateTime.Parse(dateTb.Text);
                }

                _oldShiftWindow.OrdersDataGrid.ItemsSource = DatabaseEntity.DBEntity.RenPointEnt.Orders.ToList();
                DatabaseEntity.DBEntity.RenPointEnt.SaveChanges();

                this.Close();
            }

           
        }
    }
}
