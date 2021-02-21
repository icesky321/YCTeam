using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YC.SQLServerDAL
{
    public class ODMaterialdetailDA : IDisposable
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

        ~ODMaterialdetailDA()
        {
            this.Dispose();
        }

        /// <summary>
        /// 新增物料信息
        /// </summary>
        /// <param name="odinfo"></param>
        /// <returns></returns>
        public YC.SQLServerDAL.ODMaterialdetail NewODMaterialdetail(YC.SQLServerDAL.ODMaterialdetail odmaterial)
        {
            if (odmaterial != null)
            {
                odmaterial.ODMId = Guid.Empty;
                odmaterial.ODMId = Guid.NewGuid();
                dbContext.ODMaterialdetail.InsertOnSubmit(odmaterial);
                dbContext.SubmitChanges();
            }
            return odmaterial;
        }

        /// <summary>
        /// 根据订单ID获取所有物料信息
        /// </summary>
        /// <param name="ODId"></param>
        /// <returns></returns>
        public IQueryable<YC.SQLServerDAL.ODMaterialdetail> GetodmaterialByODId(Guid ODId)
        {
            var query = from c in dbContext.ODMaterialdetail
                        where c.ODId == ODId
                        select c;
            return query.AsQueryable<YC.SQLServerDAL.ODMaterialdetail>();
        }
    }
}
