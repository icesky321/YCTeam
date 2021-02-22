using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using org.in2bits.MyXls;
using System.Data;
using System.IO;

public partial class ProjectManage_NewMaterialOrder : System.Web.UI.Page
{
    YC.SQLServerDAL.ProjectInfo projects = new YC.SQLServerDAL.ProjectInfo();
    YC.BLL.ProjectInfo bll_project = new YC.BLL.ProjectInfo();
    YC.SQLServerDAL.OrderDetailInfo odinfo = new YC.SQLServerDAL.OrderDetailInfo();
    YC.BLL.OrderDetailInfo bll_odinfo = new YC.BLL.OrderDetailInfo();
    YC.BLL.ODMaterialdetail bll_odmdetail = new YC.BLL.ODMaterialdetail();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Init_Load();
        }
    }

    private void LoadProjectInfo(Guid proid)
    {
        projects = bll_project.GetProjectInfoByProId(proid);
        lbProName.Text = projects.ProjectName;
        lbProNum.Text = projects.ProjectNum;
        lbStatus.Text = projects.Status;
        lbAmount.Text = "¥" + projects.Amount.ToString() + "元";
        lbPurchaser.Text = projects.Purchaser;
        
    }
    

    private void NewMaterialOrderInfo(Guid proid,Guid SubProId)
    {
        odinfo.ProjectId = proid;
        odinfo.RcvDpt = tbRcvDpt.Text;
        odinfo.RcvAddr = tbRcvAddr.Text;
        odinfo.RcvDate = Convert.ToDateTime(tbRcvDate.Text);
        bll_odinfo.NewOrderDetailInfo(odinfo);
        hfODId.Value = odinfo.ODId.ToString();
    }

    private void Init_Load()
    {
        if (Request.QueryString["id"] != null)
        {
            hfProId.Value = Request.QueryString["id"];
            Guid proId = Guid.Empty;
            Guid Subid = Guid.Empty;
            Guid.TryParse(hfProId.Value, out proId);
            Guid.TryParse(hfSubProId.Value, out Subid);
            LoadProjectInfo(proId);
        }
    }

    protected void btSure_Click(object sender, EventArgs e)
    {
        Guid proId = Guid.Empty;
        Guid.TryParse(hfProId.Value, out proId);
        Guid Subid = Guid.Empty;
        Guid.TryParse(hfSubProId.Value, out Subid);
        NewMaterialOrderInfo(proId, Subid);
        InsertMaterialInfo();
        Response.Redirect("ProjectList.aspx");
    }

    /// <summary>
    /// 读取csv返回数据源集合
    /// </summary>
    /// <param name="filePathName"></param>
    /// <param name="iCol"></param>
    /// <returns></returns>
    public static DataTable readfile(string filePathName, int iCol)
    {
        DataTable dt = new DataTable();
        DataRow dr;
        FileStream fs = new FileStream(filePathName, FileMode.Open, FileAccess.Read);
        StreamReader r = new StreamReader(fs, System.Text.Encoding.Default);

        string output = "";
        string columsName = "";
        string[] arrData;
        string[] columsData;
        columsName = r.ReadLine();
        columsData = columsName.Split(',');
        //   init   datatable   columns   
        for (int i = 0; i < iCol; i++)
        {
            dt.Columns.Add(columsData[i].ToString(), typeof(string));
        }

        //   read   file   
        r.BaseStream.Seek(0, SeekOrigin.Current);
        while (r.Peek() > -1)
        {
            output = r.ReadLine();

            arrData = output.Split(',');

            if (arrData.Length < iCol)
            {
                iCol = arrData.Length;
            }

            dr = dt.NewRow();
            for (int i = 0; i < iCol; i++)
            {
                dr[i] = arrData[i];
            }
            dt.Rows.Add(dr);
        }
        r.Close();

        return dt;
    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        string fileName = FileUpload1.FileName;//获取已上传文件的名字
        string fileTye = fileName.Substring(fileName.LastIndexOf(".") + 1);//获取上传文件的后缀名
        string mpath = Server.MapPath("~\\CVSFile") + "\\" + fileName;//获取文件上传的物理路径
        if (fileTye == "CSV" || fileTye == "csv")
        {
            FileUpload1.SaveAs(mpath);
            GridView1.DataSource = readfile(mpath, 6);
            GridView1.DataBind();
        }
    }

    void InsertMaterialInfo()
    {
        int i = 0;
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (int.TryParse(row.Cells[0].Text, out i) == true)
            {
                YC.SQLServerDAL.ODMaterialdetail odmdetail = new YC.SQLServerDAL.ODMaterialdetail();
                odmdetail.ODId = Guid.Parse(hfODId.Value);
                odmdetail.ProjectId = Guid.Parse(hfProId.Value);
                odmdetail.MaterialName = row.Cells[1].Text;
                odmdetail.Model = row.Cells[2].Text;
                odmdetail.Quantity = Convert.ToDecimal(row.Cells[3].Text);
                odmdetail.Unit = row.Cells[4].Text;
                odmdetail.Reamrk = row.Cells[5].Text;
                bll_odmdetail.NewODMaterialdetail(odmdetail);
            }
        }
    }
}