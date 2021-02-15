using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YC.BLL
{
    public class UserInfo
    {
        YC.SQLServerDAL.UserInfoDA da = new SQLServerDAL.UserInfoDA();

        public YC.SQLServerDAL.Ygsz NewYgsz(YC.SQLServerDAL.Ygsz ygsz)
        {
            return da.NewYgsz(ygsz);
        }
    }
}
