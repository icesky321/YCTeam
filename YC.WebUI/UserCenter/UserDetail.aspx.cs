using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SEA_Stuff1.StuffCreated += SEA_Stuff1_StuffCreated;
        SEA_Stuff1.Canceled += SEA_Stuff1_Canceled;
        SEA_Stuff1.Deleted += SEA_Stuff1_Deleted;
        SEA_Stuff1.Updated += SEA_Stuff1_Updated;
        if (!IsPostBack)
        {
            Init_Load();
        }
    }

    private void SEA_Stuff1_Updated(object sender, EventArgs e)
    {
        SEA_Stuff1.ChangeMode(FormViewMode.ReadOnly);

    }

    private void SEA_Stuff1_Deleted(object sender, EventArgs e)
    {
        Response.Redirect("UserList.aspx");
    }

    private void SEA_Stuff1_Canceled(object sender, EventArgs e)
    {
        SEA_Stuff1.ChangeMode(FormViewMode.ReadOnly);
    }

    private void SEA_Stuff1_StuffCreated(object sender, StuffInsertedEventArgs e)
    {
        Response.Redirect("UserList.aspx");
    }

    private void Init_Load()
    {
        if (Request.QueryString["id"] != null)
        {
            hfAppId.Value = Request.QueryString["id"];
            Guid sId = Guid.Empty;
            Guid.TryParse(hfAppId.Value, out sId);
            SEA_Stuff1.SId = sId;
        }

        if (Request.QueryString["mode"] == "ReadOnly")
        {
            SEA_Stuff1.ChangeMode(FormViewMode.ReadOnly);
        }

        if (Request.QueryString["mode"] == "Edit")
        {
            SEA_Stuff1.ChangeMode(FormViewMode.Edit);
        }
    }
}