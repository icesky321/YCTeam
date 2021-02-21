using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ProjectManage_ProjectList : System.Web.UI.Page
{
    YC.BLL.SubProjectInfo bll_subproject = new YC.BLL.SubProjectInfo();
    YC.BLL.OrderDetailInfo bll_odinfo = new YC.BLL.OrderDetailInfo();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Init_Load();
        }
    }

    private void Init_Load()
    {
        LoadData();
    }

    private void LoadData()
    {
        var projects = bll_subproject.GetProjectInfoList();
        rptProject.DataSource = projects;
        rptProject.DataBind();
    }
}