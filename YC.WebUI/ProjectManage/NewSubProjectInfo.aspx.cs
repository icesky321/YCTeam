using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProjectManage_NewSubProjectInfo : System.Web.UI.Page
{
    YC.SQLServerDAL.ProjectInfo projects = new YC.SQLServerDAL.ProjectInfo();
    YC.BLL.ProjectInfo bll_project = new YC.BLL.ProjectInfo();
    YC.SQLServerDAL.SubProjectInfo subprojects = new YC.SQLServerDAL.SubProjectInfo();
    YC.BLL.SubProjectInfo bll_subprojects = new YC.BLL.SubProjectInfo();
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
        lbOperDate.Text = projects.OperatDate.ToString();
    }

    private void NewSubProjectInfo(Guid proid)
    {
        subprojects.ProjectId = proid;
        subprojects.SubProNum = tbSubProNum.Text;
        subprojects.SubProName = tbSubProName.Text;
        subprojects.SubAmount = Convert.ToDecimal(tbAmount.Text);
        subprojects.SubPurchaser = tbSubPurchaser.Text;
        subprojects.SubDpt = tbDpt.Text;
        subprojects.Applicant = tbApplicant.Text;
        subprojects.ApplicantDate = Convert.ToDateTime(tbApplicantDate.Text);
        subprojects.Remark = tbRemark.Text;
        subprojects.Status = "待立项";
        bll_subprojects.NewSubProjectInfo(subprojects);
    }

    private void Init_Load()
    {
        if (Request.QueryString["id"] != null)
        {
            hfProId.Value = Request.QueryString["id"];
            Guid proId = Guid.Empty;
            Guid.TryParse(hfProId.Value, out proId);
            LoadProjectInfo(proId);
        }
    }


    protected void btSure_Click(object sender, EventArgs e)
    {
        Guid proId = Guid.Empty;
        Guid.TryParse(hfProId.Value, out proId);
        NewSubProjectInfo(proId);
        Response.Redirect("ProjectList.aspx");
    }
}