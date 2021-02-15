using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YC.SQLServerDAL
{
    public class UserInfoDA
    {
        YC.SQLServerDAL.YCDataContext dbContext = new YCDataContext(DS.ConnectionString.ConnectionStringYC());

        /// <summary>
        /// 新增员工信息
        /// </summary>
        /// <param name="ygsz"></param>
        /// <returns></returns>
        public YC.SQLServerDAL.Ygsz NewYgsz(YC.SQLServerDAL.Ygsz ygsz)
        {
            if (ygsz != null)
            {
                dbContext.Ygsz.InsertOnSubmit(ygsz);
                dbContext.SubmitChanges();
            }
            return ygsz;
        }
    }
}
