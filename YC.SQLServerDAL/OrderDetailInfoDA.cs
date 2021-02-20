using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YC.SQLServerDAL
{
    public class OrderDetailInfoDA : IDisposable
    { 
        YCDataContext dbContext=new YCDataContext(YC.SQLServerDAL.Connection.GetConnectionString());
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

        ~OrderDetailInfoDA()
        {
            this.Dispose();
        }

        /// <summary>
        /// 新增订单详细信息
        /// </summary>
        /// <param name="odinfo"></param>
        /// <returns></returns>
        public YC.SQLServerDAL.OrderDetailInfo NewOrderDetailInfo(YC.SQLServerDAL.OrderDetailInfo odinfo)
        {
            if (odinfo != null)
            {
                odinfo.ODId = Guid.NewGuid();
                dbContext.OrderDetailInfo.InsertOnSubmit(odinfo);
                dbContext.SubmitChanges();
            }
            return odinfo;
        }

        /// <summary>
        /// 根据项目ID获取所有订单信息
        /// </summary>
        /// <param name="ProId"></param>
        /// <returns></returns>
        public IQueryable<YC.SQLServerDAL.OrderDetailInfo> GetodinfoByProId(Guid ProId)
        {
            var query = from c in dbContext.OrderDetailInfo
                        where c.ProjectId == ProId
                        select c;
            return query.AsQueryable<YC.SQLServerDAL.OrderDetailInfo>();
        }

        /// <summary>
        /// 根据订单ID获取所有订单信息
        /// </summary>
        /// <param name="ProId"></param>
        /// <returns></returns>
        public IQueryable<YC.SQLServerDAL.OrderDetailInfo> GetodinfoBySubProId(Guid SubProId)
        {
            var query = from c in dbContext.OrderDetailInfo
                        where c.SubProId == SubProId
                        select c;
            return query.AsQueryable<YC.SQLServerDAL.OrderDetailInfo>();
        }
    }


}
