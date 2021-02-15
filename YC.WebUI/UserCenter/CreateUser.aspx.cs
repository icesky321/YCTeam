using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class UserCenter_CreateUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCreateUser_Click(object sender, EventArgs e)
    {
        Membership.CreateUser(tbMobileNum.Text.Trim(), tbPassword.Text);
        MUserInfo.UserTypeId = 2;
        MUserInfo.UserName = tbUserName.Text;
        MUserInfo.MobilePhoneNum = tbMobileNum.Text;
        MUserInfo.Province = DDLAddress1.province.ToString();
        MUserInfo.City = DDLAddress1.city.ToString();
        MUserInfo.Town = DDLAddress1.country.ToString();
        MUserInfo.Street = DDLAddress1.street.ToString();
        MUserInfo.CreateTime = System.DateTime.Now;
        MUserInfo.IDAuthentication = false;
        MUserInfo.ChopAuthentication = false;
        MUserInfo.InCharge = false;
        MUserInfo.Audit = false;
        MUserInfo.AuditDate = Convert.ToDateTime("1900-1-1");
        bll_userinfo.NewUserInfo(MUserInfo);
        Roles.AddUserToRole(tbMobileNum.Text.Trim(), "general");
        Response.Redirect("AddUserToRole.aspx");
    }
}