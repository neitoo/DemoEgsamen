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
    /// Логика взаимодействия для ListClientWindow.xaml
    /// </summary>
    public partial class ListClientWindow : Window
    {
        public ListClientWindow()
        {
            InitializeComponent();

            listClientDG.ItemsSource = DatabaseEntity.DBEntity.RenPointEnt.Clients.ToList();
        }

        private void regClientBtn_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
