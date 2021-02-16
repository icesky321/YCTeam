using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using YC;

public partial class UserCenter_CreateUser : System.Web.UI.Page
{
    YC.SQLServerDAL.Ygsz MUserInfo = new YC.SQLServerDAL.Ygsz();
    //YC.BLL.UserInfo bll_userinfo = new YC.BLL.UserInfo();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void btnCreateUser_Click(object sender, EventArgs e)
    {
        //Membership.CreateUser(tbMobileNum.Text.Trim(), tbPassword.Text);
        //MUserInfo.Bm_ = tbJobNum.Text;
        //MUserInfo.Mc_ = tbUserName.Text;
        //MUserInfo.P_mobile = tbMobileNum.Text;
        //MUserInfo = System.DateTime.Now;
        //bll_userinfo.NewYgsz(MUserInfo);
        //Response.Redirect("AddUserToRole.aspx");
    }
}