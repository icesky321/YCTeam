using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using YC.SQLServerDAL;

namespace YC.BLL
{
    public class StuffManage
    {
        YC.SQLServerDAL.StuffDA da = new SQLServerDAL.StuffDA();

        /// <summary>
        /// 释放由本类占用的所有资源
        /// </summary>
        public void Dispose()
        {
            da.Dispose();
        }


        #region 用户数统计
        /// <summary>
        /// 获取用户总数
        /// </summary>
        /// <returns></returns>
        public int GetStuffSum()
        {
            return da.GetStuffSum();
        }



        #endregion

        public YC.SQLServerDAL.Stuff NewStuff(YC.SQLServerDAL.Stuff user)
        {
            return da.NewStuff(user);
        }

        /// <summary>
        /// 获取全部员工列表
        /// </summary>
        /// <returns></returns>
        public IQueryable<YC.SQLServerDAL.Stuff> GetStuff()
        {
            return da.GetStuff();
        }

        /// <summary>
        /// 获取指定Id的员工
        /// </summary>
        /// <param name="sId">员工Id</param>
        /// <returns></returns>
        public YC.SQLServerDAL.Stuff GetStuffById(Guid sId)
        {
            return da.GetStuffById(sId);
        }

        /// <summary>
        /// 获取指定工号的员工
        /// </summary>
        /// <param name="jobNumber">员工工号</param>
        /// <returns></returns>
        public YC.SQLServerDAL.Stuff GetStuffByJobNumber(string jobNumber)
        {
            return da.GetStuffByJobNumber(jobNumber);
        }

        /// <summary>
        /// 删除人员
        /// </summary>
        /// <param name="sId">员工Id</param>
        public void DeleteStuff(Guid sId)
        {
            da.DeleteStuff(sId);
        }

        public void UpdateStuff(YC.SQLServerDAL.Stuff user)
        {
            da.UpdateStuff(user);
        }

        public bool ExistUser(string jobNumber)
        {
            return da.ExistUser(jobNumber);
        }

    }
}
