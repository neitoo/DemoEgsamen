using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RentalPointCPKiOv2.Model;

namespace RentalPointCPKiOv2.Database
{
    public class DatabaseEntity
    {
        public CPKiOdbEntities RenPointEnt = new CPKiOdbEntities();

        public static DatabaseEntity DBEntity = new DatabaseEntity();
    }
}
