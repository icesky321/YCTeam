using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using YC.SQLServerDAL;

namespace YC.BLL
{
    public class ProjectInfo
    {
        YC.SQLServerDAL.ProjectInfoDA da = new ProjectInfoDA();

        /// <summary>
        /// 释放由本类占用的所有资源
        /// </summary>
        public void Dispose()
        {
            da.Dispose();
        }

        /// <summary>
        /// 创建概括性大项目信息
        /// </summary>
        /// <param name="projectinfo"></param>
        /// <returns></returns>
        public YC.SQLServerDAL.ProjectInfo CreateProjectInfo(YC.SQLServerDAL.ProjectInfo projectinfo)
        {
            return da.CreateProjectInfo(projectinfo);
        }

        /// <summary>
        /// 获取所有项目信息
        /// </summary>
        /// <returns></returns>
        public IQueryable<YC.SQLServerDAL.ProjectInfo> GetProjectInfo()
        {
            return da.GetProjectInfo();
        }
    }
}
