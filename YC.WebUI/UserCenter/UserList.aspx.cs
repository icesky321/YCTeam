using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserList : System.Web.UI.Page
{
    YC.BLL.StuffManage bll_user = new YC.BLL.StuffManage();

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
        var users = bll_user.GetStuff();
        rptApp.DataSource = users;
        rptApp.DataBind();
    }


}