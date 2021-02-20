using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using YC.SQLServerDAL;

namespace YC.BLL
{
    public class ODMaterialdetail
    {
        YC.SQLServerDAL.ODMaterialdetailDA da = new ODMaterialdetailDA();

        /// <summary>
        /// 释放由本类占用的所有资源
        /// </summary>
        public void Dispose()
        {
            da.Dispose();
        }

        /// <summary>
        /// 新增物料信息
        /// </summary>
        /// <param name="odinfo"></param>
        /// <returns></returns>
        public YC.SQLServerDAL.ODMaterialdetail NewODMaterialdetail(YC.SQLServerDAL.ODMaterialdetail odmaterial)
        {
            return da.NewODMaterialdetail(odmaterial);
        }

        /// <summary>
        /// 根据订单ID获取所有物料信息
        /// </summary>
        /// <param name="ODId"></param>
        /// <returns></returns>
        public IQueryable<YC.SQLServerDAL.ODMaterialdetail> GetodmaterialByODId(Guid ODId)
        {
            return da.GetodmaterialByODId(ODId);
        }
        }
}
