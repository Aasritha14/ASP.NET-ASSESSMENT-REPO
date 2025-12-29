using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Electricity_PRJ
{
    public class DBHandler
    {

        public static SqlConnection GetConnection()
        {
            string connStr = ConfigurationManager.ConnectionStrings["ElectricityBillDB"].ConnectionString;
            return new SqlConnection(connStr);
        }

    }
}