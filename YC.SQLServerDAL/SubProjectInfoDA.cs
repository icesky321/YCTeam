using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YC.SQLServerDAL
{
    public class SubProjectInfoDA
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

        ~SubProjectInfoDA()
        {
            this.Dispose();
        }

        /// <summary>
        /// 创建子项目信息
        /// </summary>
        /// <param name="subprojectinfo"></param>
        /// <returns></returns>
        public YC.SQLServerDAL.SubProjectInfo NewSubProjectInfo(YC.SQLServerDAL.SubProjectInfo subprojectinfo)
        {
            if (subprojectinfo != null)
            {
                subprojectinfo.SubProId = Guid.NewGuid();
                dbContext.SubProjectInfo.InsertOnSubmit(subprojectinfo);
                dbContext.SubmitChanges();
            }
            return subprojectinfo;
        }

        public YC.SQLServerDAL.SubProjectInfo GetSubProBySubProId(Guid SubProId)
        {
            var query = from c in dbContext.SubProjectInfo
                        where c.SubProId == SubProId
                        select c;
            return query.FirstOrDefault<YC.SQLServerDAL.SubProjectInfo>();
        }

        public void UpdateSubProjectInfo(YC.SQLServerDAL.SubProjectInfo subprojectinfo)
        {
            dbContext.SubmitChanges();
        }
    }
}
