using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace YC.SQLServerDAL
{
    public class StuffDA : IDisposable
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

        ~StuffDA()
        {
            this.Dispose();
        }

        #region 用户数统计
        /// <summary>
        /// 获取用户总数
        /// </summary>
        /// <returns></returns>
        public int GetStuffSum()
        {
            return dbContext.Stuff.Count();
        }

        /// <summary>
        /// 获取已认证并登记进微信企业号中的人员数。
        /// </summary>
        /// <returns></returns>
        //public int GetIsQYUser_Sum()
        //{
        //    return dbContext.Stuff.Where(o => o.IsQYUser == true).Count();
        //}

        #endregion

        public YC.SQLServerDAL.Stuff NewStuff(YC.SQLServerDAL.Stuff user)
        {
            if (user != null)
            {
                if (!ExistUser(user.JobNumber))
                {
                    user.SId = Guid.NewGuid();
                    dbContext.Stuff.InsertOnSubmit(user);
                    dbContext.SubmitChanges();
                }
            }
            return user;
        }

        /// <summary>
        /// 获取全部修理工列表
        /// </summary>
        /// <returns></returns>
        public IQueryable<YC.SQLServerDAL.Stuff> GetStuff()
        {
            var query = from c in dbContext.Stuff
                        select c;
            return query.AsQueryable<YC.SQLServerDAL.Stuff>();
        }

        /// <summary>
        /// 获取指定Id的修理工
        /// </summary>
        /// <param name="SId">修理工Id</param>
        /// <returns></returns>
        public YC.SQLServerDAL.Stuff GetStuffById(Guid SId)
        {
            var query = from c in dbContext.Stuff
                        where c.SId == SId
                        select c;
            return query.FirstOrDefault<YC.SQLServerDAL.Stuff>();
        }

        /// <summary>
        /// 获取指定工号的修理工
        /// </summary>
        /// <param name="jobNumber">修理工工号</param>
        /// <returns></returns>
        public YC.SQLServerDAL.Stuff GetStuffByJobNumber(string jobNumber)
        {
            var query = from c in dbContext.Stuff
                        where c.JobNumber == jobNumber
                        select c;
            return query.FirstOrDefault<YC.SQLServerDAL.Stuff>();
        }

        /// <summary>
        /// 删除人员
        /// </summary>
        /// <param name="SId">员工Id</param>
        public void DeleteStuff(Guid SId)
        {
            var query = from s in dbContext.Stuff
                        where s.SId == SId
                        select s;
            foreach (var para in query)
            {
                dbContext.Stuff.DeleteOnSubmit(para);
            }

            try
            {
                dbContext.SubmitChanges();
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public void UpdateStuff(YC.SQLServerDAL.Stuff userinfo)
        {
            dbContext.SubmitChanges();
        }

        public bool ExistUser(string jobNumber)
        {
            bool exists = false;
            var query = from u in dbContext.Stuff
                        where u.JobNumber == jobNumber
                        select u;
            if (query.Count() > 0)
            {
                exists = true;
            }
            return exists;
        }


    }
}
