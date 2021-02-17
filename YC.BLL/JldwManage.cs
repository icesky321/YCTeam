using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using YC.SQLServerDAL;

namespace YC.BLL
{
    public class JldwManage
    {
        YC.SQLServerDAL.JldwDA da = new JldwDA();

        /// <summary>
        /// 释放由本类占用的所有资源
        /// </summary>
        public void Dispose()
        {
            da.Dispose();
        }

        #region 计量单位数统计
        /// <summary>
        /// 获取计量单位总数
        /// </summary>
        /// <returns></returns>
        public int GetJldwSum()
        {
            return da.GetJldwSum();
        }



        #endregion

        /// <summary>
        /// 在数据库中新增计量单位对象。
        /// </summary>
        /// <param name="name">计量单位名称。</param>
        /// <returns></returns>
        public YC.SQLServerDAL.Jldw CreateJldw(string name)
        {
            return da.CreateJldw(name);
        }

        /// <summary>
        /// 创建新计量单位
        /// </summary>
        /// <returns></returns>
        public YC.SQLServerDAL.Jldw NewJldw(YC.SQLServerDAL.Jldw jldw)
        {
            return da.NewJldw(jldw);
        }

        /// <summary>
        /// 获取全部计量单位列表
        /// </summary>
        /// <returns></returns>
        public IQueryable<YC.SQLServerDAL.Jldw> GetJldw()
        {
            return da.GetJldw();
        }

        /// <summary>
        /// 获取指定Id的计量单位
        /// </summary>
        /// <param name="jldwId">计量单位Id</param>
        /// <returns></returns>
        public YC.SQLServerDAL.Jldw GetJldwById(Guid jldwId)
        {
            return da.GetJldwById(jldwId);
        }

        /// <summary>
        /// 获取指定计量单位名称获取计量单位实例数据
        /// </summary>
        /// <param name="jldwName">计量单位名称</param>
        /// <returns></returns>
        public YC.SQLServerDAL.Jldw GetJldwByName(string jldwName)
        {
            return da.GetJldwByName(jldwName);
        }

        /// <summary>
        /// 删除计量单位
        /// </summary>
        /// <param name="jldwId">计量单位Id</param>
        public void DeleteJldw(Guid jldwId)
        {
            da.DeleteJldw(jldwId);
        }

        public void UpdateJldw(YC.SQLServerDAL.Jldw jldw)
        {
            da.UpdateJldw(jldw);
        }

        /// <summary>
        /// 在数据库中更新计量单位对象。
        /// </summary>
        /// <param name="jldwId">计量单位Id</param>
        /// <param name="name">计量单位名称。</param>
        /// <param name="orderIndex">显示顺序号</param>
        public void UpdateJldw(Guid jldwId, string name, double orderIndex)
        {
            da.UpdateJldw(jldwId, name, orderIndex);
        }

        /// <summary>
        /// 根据计量单位名称判别数据库中是否已存在计量单位
        /// </summary>
        /// <param name="jldwName"></param>
        /// <returns></returns>
        public bool ExistJldw(string jldwName)
        {
            return da.ExistJldw(jldwName);
        }
    }
}
