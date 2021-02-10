using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using YC.SQLServerDAL;

namespace YC.BLL
{
    public class Dwtx
    {
        YC.SQLServerDAL.dwtxDA da = new dwtxDA();

        /// <summary>
        /// 新增单位体系信息
        /// </summary>
        /// <param name="dwtx"></param>
        /// <returns></returns>
        public YC.SQLServerDAL.Dwtx NewDwtx(YC.SQLServerDAL.Dwtx dwtx)
        {
            return da.NewDwtx(dwtx);
        }
    }
}
