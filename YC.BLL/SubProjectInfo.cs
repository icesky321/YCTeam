using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YC.BLL
{
    public class SubProjectInfo
    {
        YC.SQLServerDAL.SubProjectInfoDA da = new SQLServerDAL.SubProjectInfoDA();

        /// <summary>
        /// 释放由本类占用的所有资源
        /// </summary>
        public void Dispose()
        {
            da.Dispose();
        }

        public YC.SQLServerDAL.SubProjectInfo NewSubProjectInfo(YC.SQLServerDAL.SubProjectInfo subprojectinfo)
        {
            return da.NewSubProjectInfo(subprojectinfo);
        }

        public YC.SQLServerDAL.SubProjectInfo GetSubProBySubProId(Guid SubProId)
        {
            return da.GetSubProBySubProId(SubProId);
        }

        public void UpdateSubProjectInfo(YC.SQLServerDAL.SubProjectInfo subprojectinfo)
        {
            da.UpdateSubProjectInfo(subprojectinfo);
        }

        /// <summary>
        /// 总项目和子项目联合查询列表
        /// </summary>
        /// <returns></returns>
        public IQueryable<YC.Model.ProjectInfoModel> GetProjectInfoList()
        {
            return da.GetProjectInfoList();
        }
    }
}
