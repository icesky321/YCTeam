using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProjectManage_NewProjectInfo : System.Web.UI.Page
{
    YC.SQLServerDAL.ProjectInfo Mprojects = new YC.SQLServerDAL.ProjectInfo();
    YC.SQLServerDAL.SubProjectInfo Msubprojects = new YC.SQLServerDAL.SubProjectInfo();
    YC.BLL.ProjectInfo bll_project = new YC.BLL.ProjectInfo();
    YC.BLL.SubProjectInfo bll_subproject = new YC.BLL.SubProjectInfo();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btFinish_Click(object sender, EventArgs e)
    {
        Mprojects.ProjectName = tbProName.Text;
        Mprojects.ProjectNum = tbProNum.Text;
        Mprojects.OperatDate = System.DateTime.Now;
        Mprojects.Status = "待投标";
        Mprojects.Amount = Convert.ToDecimal(tbAmount.Text);
        Mprojects.Purchaser = tbPurchaser.Text;
        Mprojects.Dpt = tbDpt.Text;
        Mprojects.Applicant = tbApplicant.Text;
        Mprojects.ApplicantDate = Convert.ToDateTime(tbApplicantDate.Text);
        Mprojects.Remark = tbRemark.Text;
        bll_project.CreateProjectInfo(Mprojects);
        Response.Redirect("ProjectList.aspx");
    }
}