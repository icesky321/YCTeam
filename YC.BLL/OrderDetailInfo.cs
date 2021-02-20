using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using YC.SQLServerDAL;

namespace YC.BLL
{
    public class OrderDetailInfo
    {
        YC.SQLServerDAL.OrderDetailInfoDA da = new OrderDetailInfoDA();

        /// <summary>
        /// 释放由本类占用的所有资源
        /// </summary>
        public void Dispose()
        {
            da.Dispose();
        }

        /// <summary>
        /// 新增订单详细信息
        /// </summary>
        /// <param name="odinfo"></param>
        /// <returns></returns>
        public YC.SQLServerDAL.OrderDetailInfo NewOrderDetailInfo(YC.SQLServerDAL.OrderDetailInfo odinfo)
        {
            return da.NewOrderDetailInfo(odinfo);
        }

        /// <summary>
        /// 根据项目ID获取所有订单信息
        /// </summary>
        /// <param name="ProId"></param>
        /// <returns></returns>
        public IQueryable<YC.SQLServerDAL.OrderDetailInfo> GetodinfoByProId(Guid ProId)
        {
            return da.GetodinfoByProId(ProId);
        }

        /// <summary>
        /// 根据订单ID获取所有订单信息
        /// </summary>
        /// <param name="ProId"></param>
        /// <returns></returns>
        public IQueryable<YC.SQLServerDAL.OrderDetailInfo> GetodinfoBySubProId(Guid SubProId)
        {
            return da.GetodinfoBySubProId(SubProId);
        }
    }
}
