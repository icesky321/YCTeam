using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YC.SQLServerDAL
{
    public class dwtxDA : IDisposable
    {
        YCDataContext dbContext = new YCDataContext(YC.SQLServerDAL.Connection.GetConnectionString());

        /// <summary>
        /// 释放由本类占用的所有资源
        /// </summary>
        public void Dispose()
        {
            if (dbContext != null)
            {
                dbContext.Dispose();
                dbContext = null;
            }

            GC.SuppressFinalize(this);
        }

        ~dwtxDA()
        {
            this.Dispose();
        }


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
