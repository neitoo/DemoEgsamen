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
using RentalPointCPKiOv2.Class;
using System.Windows.Threading;

namespace RentalPointCPKiOv2.window
{
    /// <summary>
    /// Логика взаимодействия для AdminWindow.xaml
    /// </summary>
    public partial class AdminWindow : Window
    {
        public int time = 600;
        public DispatcherTimer Timer;
        public AdminWindow(Staff user)
        {
            InitializeComponent();

            DataContext = user;

            Timer = new DispatcherTimer();
            Timer.Interval = new TimeSpan(0, 0, 1);
            Timer.Tick += timerTicker;
            Timer.Start();
        }

        private void quitAccBtn_Click(object sender, RoutedEventArgs e)
        {
            ClassWindow.createLoginWindow().Show();
            this.Close();
        }
        void timerTicker(object sender, EventArgs e)
        {
            if (time > 0)
            {
                if (time == 300)
                {
                    MessageBox.Show("Через 5 минут сеанс будет завершен.", "Внимание");
                }
                time--;
                timerTb.Text = string.Format("{0:D2}:{1:D2}:{2:D2}", time / 3600, (time % 3600) / 60, time % 60);
            }
            else
            {
                Timer.Stop();
                ClassWindow.createLoginWindow().Show();
                this.Close();
            }
        }
    }
}
