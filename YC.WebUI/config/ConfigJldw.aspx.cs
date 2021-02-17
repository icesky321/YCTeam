using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Config_Jldw : System.Web.UI.Page
{
    YC.BLL.JldwManage bll_jldw = new YC.BLL.JldwManage();

    protected void Page_Load(object sender, EventArgs e)
    {
        SEA_Jldw1.JldwCreated += new JldwInsertedEventHandler(VacationType1_VacationCreated);
        SEA_Jldw1.Canceled += new EventHandler(VacationType1_Canceled);

        if (!IsPostBack)
        {
            Init_Load();
        }

    }

    private void Init_Load()
    {
        GetCountOfStore();
    }


    void VacationType1_VacationCreated(object sender, JldwInsertedEventArgs e)
    {
        GetCountOfStore();
        gvJldw.DataBind();
        MultiView1.SetActiveView(view1);
    }

    void VacationType1_Canceled(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(view1);
    }

    private void GetCountOfStore()
    {
        lbCountOfStorage.Text = bll_jldw.GetJldwSum().ToString();
    }

    void SEA_Storage1_StorageSaved(object sender, FormViewInsertedEventArgs e)
    {

    }
    protected void btnNewBank_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(view2);
        SEA_Jldw1.ChangeMode(FormViewMode.Insert);
    }

    protected void btnGoback_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(view1);
    }


    protected void gvJldw_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Guid depId = Guid.Empty;
        Guid.TryParse(e.CommandArgument.ToString(), out depId);

        if (e.CommandName == "UpdateJldw")
        {

        }

        if (e.CommandName == "DeleteDep")
        {
            bll_jldw.DeleteJldw(depId);
            Init_Load();
            gvJldw.DataBind();
        }
    }
}