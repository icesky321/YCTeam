using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

/// <summary>
/// WebService 的摘要说明
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
[System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService
{

    public WebService()
    {

        //如果使用设计的组件，请取消注释以下行 
        //InitializeComponent(); 
    }

    private static string[] autoCompleteWordList = null;

    [WebMethod]
    public String[] GetCompleteSupplier(string prefixText, int count)
    {
        //如果数组为空
        if (autoCompleteWordList == null)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["YC_SQL_ConnString"].ToString());
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter("select distinct dwmc from dwtx  where dwmc like'%" + prefixText + "%' or dbo.comm_getpy(dwmc) like'%" + prefixText + "%' order by dwmc", conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            //读取内容文件的数据到临时数组
            string[] temp = new string[ds.Tables[0].Rows.Count];
            int i = 0;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                temp[i] = dr["dwmc"].ToString();
                i++;
            }
            //将临时数组的内容赋给返回数组
            autoCompleteWordList = temp;
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
        }
        String[] returnValue = new String[count];
        returnValue = autoCompleteWordList;
        autoCompleteWordList = null;
        //返回数据
        return returnValue;
    }

}