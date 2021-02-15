using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControls_SEA_Stuff : System.Web.UI.UserControl
{
    YC.BLL.StuffManage bll_StuffManage = new YC.BLL.StuffManage();

    public event StuffInsertedEventHandler StuffCreated;
    public event EventHandler Canceled;
    public event EventHandler Updated;
    public event EventHandler Deleted;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Init_Load();
        }
    }

    #region 初始化加载
    public void Init_Load()
    {

    }
    #endregion

    #region 属性
    public Guid SId
    {
        get
        {
            Guid wxgId = Guid.Empty;
            Guid.TryParse(hfSId.Value, out wxgId);
            return wxgId;
        }
        set
        {
            hfSId.Value = value.ToString();
        }
    }

    #endregion

    #region 资源释放

    public override void Dispose()
    {
        bll_StuffManage.Dispose();
        base.Dispose();
    }

    #endregion

    /// <summary>
    /// 切换指定的数据输入模式。
    /// </summary>
    /// <param name="newMode"></param>
    public void ChangeMode(FormViewMode newMode)
    {
        formView.ChangeMode(newMode);
    }


    protected void View_ItemInserting(object sender, FormViewInsertEventArgs e)
    {
        string applicationReason = e.Values["tbApplicationReason"].ToString();
        if (string.IsNullOrEmpty(applicationReason))
        {
            e.Cancel = true;
        }
    }


    protected void formView_ItemCommand(object sender, FormViewCommandEventArgs e)
    {
        Guid wxgId = Guid.Empty;
        Guid.TryParse(hfSId.Value, out wxgId);

        if (e.CommandName == "UpdateStuff")
        {

            YC.SQLServerDAL.Stuff record = bll_StuffManage.GetStuffById(wxgId);

            // 工号
            TextBox tbJobNumber = formView.FindControl("tbJobNumber") as TextBox;
            record.JobNumber = tbJobNumber.Text;

            // 姓名
            TextBox tbRealName = formView.FindControl("tbRealName") as TextBox;
            record.RealName = tbRealName.Text;

            // 手机号码
            TextBox tbMobilePhone = formView.FindControl("tbMobilePhone") as TextBox;
            record.MobilePhone = tbMobilePhone.Text;

            // 手机短号
            TextBox tbMobileShort = formView.FindControl("tbMobileShort") as TextBox;
            record.MobileShort = tbMobileShort.Text;

            bll_StuffManage.UpdateStuff(record);
            if (Updated != null)
            {
                Updated(this, new EventArgs());
            }

        }

        if (e.CommandName == "InsertStuff")
        {
            YC.SQLServerDAL.Stuff record = new YC.SQLServerDAL.Stuff();

            // 工号
            TextBox tbJobNumber = formView.FindControl("tbJobNumber") as TextBox;
            record.JobNumber = tbJobNumber.Text;

            // 姓名
            TextBox tbRealName = formView.FindControl("tbRealName") as TextBox;
            record.RealName = tbRealName.Text;

            // 手机号码
            TextBox tbMobilePhone = formView.FindControl("tbMobilePhone") as TextBox;
            record.MobilePhone = tbMobilePhone.Text;

            // 手机短号
            TextBox tbMobileShort = formView.FindControl("tbMobileShort") as TextBox;
            record.MobileShort = tbMobileShort.Text;

            YC.SQLServerDAL.Stuff user = bll_StuffManage.NewStuff(record);
            if (StuffCreated != null)
            {
                hfSId.Value = user.SId.ToString();
                StuffInsertedEventArgs args = new StuffInsertedEventArgs(user);
                StuffCreated(this, args);
            }
        }

        if (e.CommandName == "DeleteStuff")
        {
            bll_StuffManage.DeleteStuff(wxgId);
            if (Deleted != null)
            {
                Deleted(this, new EventArgs());
            }
        }

        if (e.CommandName == "CancelUpdate" || e.CommandName == "CancelInsert")
        {
            if (Canceled != null)
            {
                Canceled(this, new EventArgs());
            }
        }
    }


    protected void formView_DataBound(object sender, EventArgs e)
    {
        //Populate_StuffTitle();
    }

}

public delegate void StuffInsertedEventHandler(object sender, StuffInsertedEventArgs e);

public class StuffInsertedEventArgs : EventArgs
{
    private YC.SQLServerDAL.Stuff _user;

    public StuffInsertedEventArgs(YC.SQLServerDAL.Stuff user)
    {
        this._user = user;
    }

    public YC.SQLServerDAL.Stuff Stuff
    {
        get { return _user; }
    }
}