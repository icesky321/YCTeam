using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace YC.SQLServerDAL
{
    public class JldwDA : IDisposable
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

        ~JldwDA()
        {
            this.Dispose();
        }

        #region 计量单位数统计
        /// <summary>
        /// 获取计量单位总数
        /// </summary>
        /// <returns></returns>
        public int GetJldwSum()
        {
            return dbContext.Jldw.Count();
        }



        #endregion

        /// <summary>
        /// 在数据库中新增计量单位对象。
        /// </summary>
        /// <param name="name">计量单位名称。</param>
        /// <returns></returns>
        public YC.SQLServerDAL.Jldw CreateJldw(string name)
        {
            var jldw = new YC.SQLServerDAL.Jldw();
            jldw.JLDWID = Guid.NewGuid();
            jldw.Name = name;
            jldw.OrderIndex = 0;
            if (!ExistJldw(jldw.Name))
            {
                dbContext.Jldw.InsertOnSubmit(jldw);
                dbContext.SubmitChanges();
            }
            return jldw;
        }

        /// <summary>
        /// 创建新计量单位（此计量单位为安装设备的所在单位）
        /// </summary>
        /// <returns></returns>
        public YC.SQLServerDAL.Jldw NewJldw(YC.SQLServerDAL.Jldw jldw)
        {
            if (jldw != null)
            {
                if (!ExistJldw(jldw.Name))
                {
                    jldw.JLDWID = Guid.NewGuid();
                    dbContext.Jldw.InsertOnSubmit(jldw);
                    dbContext.SubmitChanges();
                }
            }
            return jldw;
        }

        /// <summary>
        /// 获取全部计量单位列表
        /// </summary>
        /// <returns></returns>
        public IQueryable<YC.SQLServerDAL.Jldw> GetJldw()
        {
            var query = from c in dbContext.Jldw
                        orderby c.OrderIndex
                        select c;
            return query.AsQueryable<YC.SQLServerDAL.Jldw>();
        }

        /// <summary>
        /// 获取指定Id的计量单位
        /// </summary>
        /// <param name="jldwId">计量单位Id</param>
        /// <returns></returns>
        public YC.SQLServerDAL.Jldw GetJldwById(Guid jldwId)
        {
            var query = from c in dbContext.Jldw
                        where c.JLDWID == jldwId
                        select c;
            return query.FirstOrDefault<YC.SQLServerDAL.Jldw>();
        }

        /// <summary>
        /// 获取指定计量单位名称获取计量单位实例数据
        /// </summary>
        /// <param name="name">计量单位名称</param>
        /// <returns></returns>
        public YC.SQLServerDAL.Jldw GetJldwByName(string name)
        {
            var query = from c in dbContext.Jldw
                        where c.Name == name
                        select c;
            return query.FirstOrDefault<YC.SQLServerDAL.Jldw>();
        }

        /// <summary>
        /// 删除计量单位
        /// </summary>
        /// <param name="jldwId">计量单位Id</param>
        public void DeleteJldw(Guid jldwId)
        {
            var query = from s in dbContext.Jldw
                        where s.JLDWID == jldwId
                        select s;
            foreach (var para in query)
            {
                dbContext.Jldw.DeleteOnSubmit(para);
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

        public void UpdateJldw(YC.SQLServerDAL.Jldw jldw)
        {
            dbContext.SubmitChanges();
        }

        /// <summary>
        /// 在数据库中更新计量单位对象。
        /// </summary>
        /// <param name="jldwId">计量单位Id</param>
        /// <param name="name">计量单位名称。</param>
        /// <param name="orderIndex">显示顺序号</param>
        public void UpdateJldw(Guid jldwId, string name, double orderIndex)
        {
            var jldw = GetJldwById(jldwId);
            if (jldw != null)
            {
                jldw.Name = name;
                jldw.OrderIndex = orderIndex;

                dbContext.SubmitChanges();
            }

        }

        /// <summary>
        /// 根据计量单位名称判别数据库中是否已存在计量单位
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public bool ExistJldw(string name)
        {
            bool exists = false;
            var query = from u in dbContext.Jldw
                        where u.Name == name
                        select u;
            if (query.Count() > 0)
            {
                exists = true;
            }
            return exists;
        }


    }
}
