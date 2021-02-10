using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;

namespace YC.SQLServerDAL.DS
{
    public class ConnectionString
    {
        public static string ConnectionStringYC()
        {
            string conString = string.Empty;
            if (ConfigurationManager.ConnectionStrings["YC_SQL_ConnString"] != null)
            {
                conString = ConfigurationManager.ConnectionStrings["YC_SQL_ConnString"].ConnectionString;
            }
            else
            {
                throw new Exception("config 文件中找不到名称为 YC_SQL_ConnString 的数据库连接字符串");
            }
            return conString;
        }
    }
}
