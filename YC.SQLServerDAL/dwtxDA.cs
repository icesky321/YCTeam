using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YC.SQLServerDAL
{
    public class dwtxDA
    {
        YC.SQLServerDAL.YCDataContext dbContext = new YCDataContext(DS.ConnectionString.ConnectionStringYC());


        /// <summary>
        /// 新增单位体系信息
        /// </summary>
        /// <param name="dwtx"></param>
        /// <returns></returns>
        public YC.SQLServerDAL.Dwtx NewDwtx(YC.SQLServerDAL.Dwtx dwtx)
        {
            if (dwtx != null)
            {
                dbContext.Dwtx.InsertOnSubmit(dwtx);
                dbContext.SubmitChanges();
            }
            return dwtx;
        }
    }
}
