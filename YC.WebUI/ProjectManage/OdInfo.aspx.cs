using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProjectManage_OdInfo : System.Web.UI.Page
{
    YC.SQLServerDAL.ProjectInfo projects = new YC.SQLServerDAL.ProjectInfo();
    YC.BLL.ProjectInfo bll_project = new YC.BLL.ProjectInfo();
    YC.SQLServerDAL.SubProjectInfo subprojects = new YC.SQLServerDAL.SubProjectInfo();
    YC.BLL.SubProjectInfo bll_subprojects = new YC.BLL.SubProjectInfo();
    YC.SQLServerDAL.OrderDetailInfo odinfo = new YC.SQLServerDAL.OrderDetailInfo();
    YC.BLL.OrderDetailInfo bll_odinfo = new YC.BLL.OrderDetailInfo();
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
    }

    private void LoadSubProjectInfo(Guid Subid)
    {
        subprojects = bll_subprojects.GetSubProBySubProId(Subid);
        lbSubProName.Text = subprojects.SubProName;
        lbSubProNum.Text = subprojects.SubProNum;
        lbSubAmount.Text = "￥" + subprojects.SubAmount.ToString() + "元";
        lbSubPurchaser.Text = subprojects.SubPurchaser;
    }

    private void LoadOrderDetailInfo(Guid Subid)
    {
        rptodInfo.DataSource = bll_odinfo.GetodinfoBySubProId(Subid);
        rptodInfo.DataBind();
    }

    private void Init_Load()
    {
        if (Request.QueryString["id"] != null && Request.QueryString["Subid"] != null)
        {
            hfProId.Value = Request.QueryString["id"];
            hfSubProId.Value = Request.QueryString["Subid"];
            Guid proId = Guid.Empty;
            Guid Subid = Guid.Empty;
            Guid.TryParse(hfProId.Value, out proId);
            Guid.TryParse(hfSubProId.Value, out Subid);
            LoadProjectInfo(proId);
            LoadSubProjectInfo(Subid);
            LoadOrderDetailInfo(Subid);
        }
    }
}