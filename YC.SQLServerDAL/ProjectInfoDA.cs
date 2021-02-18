using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YC.SQLServerDAL
{
    public class ProjectInfoDA
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

        ~ProjectInfoDA()
        {
            this.Dispose();
        }

        /// <summary>
        /// 创建概括性大项目信息
        /// </summary>
        /// <param name="projectinfo"></param>
        /// <returns></returns>
        public YC.SQLServerDAL.ProjectInfo CreateProjectInfo(YC.SQLServerDAL.ProjectInfo projectinfo)
        {
            if (projectinfo != null)
            {
                projectinfo.ProjectId = Guid.NewGuid();
                dbContext.ProjectInfo.InsertOnSubmit(projectinfo);
                dbContext.SubmitChanges();

            }
            return projectinfo;
        }

        /// <summary>
        /// 获取所有项目信息
        /// </summary>
        /// <returns></returns>
        public IQueryable<YC.SQLServerDAL.ProjectInfo> GetProjectInfo()
        {
            var query = from c in dbContext.ProjectInfo
                        select c;
            return query.AsQueryable<YC.SQLServerDAL.ProjectInfo>();
        }
    }
}
