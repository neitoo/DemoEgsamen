using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RentalPointCPKiOv2.Model;
using RentalPointCPKiOv2.window;

namespace RentalPointCPKiOv2.Class
{
    class ClassWindow
    {
        public ClassWindow classWindow = new ClassWindow();
        public static AdminWindow createAdminWindow(Staff user) { return new AdminWindow(user); }
        public static OldShiftWindow createOldShiftWindow(Staff user) { return new OldShiftWindow(user); }
        public static SellerWindow createSellerWindow(Staff user) { return new SellerWindow(user); }
        public static LoginUserWindow createLoginWindow() { return new LoginUserWindow(); }
        public static ListClientWindow createListClientWindow() { return new ListClientWindow(); }
    }
}
