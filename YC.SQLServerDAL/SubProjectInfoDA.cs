using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YC.SQLServerDAL
{
    public class SubProjectInfoDA : IDisposable
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

        /// <summary>
        /// 总项目和子项目联合查询列表
        /// </summary>
        /// <returns></returns>
        public IQueryable<YC.Model.ProjectInfoModel> GetProjectInfoList()
        {
            var query = from c in dbContext.SubProjectInfo
                        join u in dbContext.ProjectInfo on c.ProjectId equals u.ProjectId into leftGroup1
                        from u in leftGroup1.DefaultIfEmpty()
                        orderby c.ApplicantDate
                        select new YC.Model.ProjectInfoModel()
                        {
                            ProjectId = u.ProjectId,
                            SubProId=c.SubProId,
                            OperatDate= Convert.ToDateTime(u.OperatDate),
                            ApplicantDate= Convert.ToDateTime(c.ApplicantDate),
                            ProjectNum=u.ProjectNum,
                            ProjectName=u.ProjectName,
                            Operator=u.Operator,
                            Status=u.Status,
                            SubProNum=c.SubProNum,
                            SubProName=c.SubProName,
                            SubPurchaser=c.SubPurchaser,
                            SubDpt=c.SubDpt,
                            Applicant=c.Applicant,
                            Remark=c.Remark,
                            SubStatus=c.Status,
                            SubAmount=Convert.ToDecimal(c.SubAmount)
                        };
            return query.AsQueryable<YC.Model.ProjectInfoModel>();
        }
    }
}
