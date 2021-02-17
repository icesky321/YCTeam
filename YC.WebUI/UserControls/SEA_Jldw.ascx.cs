using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControls_SEA_Jldw : System.Web.UI.UserControl
{
    YC.BLL.JldwManage bll_Jldw = new YC.BLL.JldwManage();
    public event JldwInsertedEventHandler JldwCreated;
    public event EventHandler Canceled;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    #region 属性
    public System.Guid JldwId
    {

        get { return Guid.Parse(hfJldwId.Value); }
        set
        {
            hfJldwId.Value = value.ToString();
        }

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


    protected void BankView_ItemInserting(object sender, FormViewInsertEventArgs e)
    {
        string jldwName = e.Values["name"].ToString();
        if (string.IsNullOrEmpty(jldwName))
        {
            e.Cancel = true;
        }
    }

    protected void formView_ItemCommand(object sender, FormViewCommandEventArgs e)
    {
        if (e.CommandName == "InsertJldw")
        {
            YC.SQLServerDAL.Jldw jldw = new YC.SQLServerDAL.Jldw();

            // 计量单位名称
            TextBox tbName = formView.FindControl("tbName") as TextBox;
            jldw.Name = tbName.Text;
            tbName.Text = "";

            // 排序号
            TextBox tbOrderIndex = formView.FindControl("tbOrderIndex") as TextBox;
            double orderIndex = 0;
            Double.TryParse(tbOrderIndex.Text, out orderIndex);
            jldw.OrderIndex = orderIndex;
            tbOrderIndex.Text = "";

            YC.SQLServerDAL.Jldw newJldw = bll_Jldw.NewJldw(jldw);
            if (newJldw != null && JldwCreated != null)
            {
                JldwInsertedEventArgs args = new JldwInsertedEventArgs(newJldw);
                JldwCreated(this, args);
            }
        }

        if (e.CommandName == "Cancel")
        {
            if (this.Canceled != null)
            {
                Canceled(this, null);
            }
        }
    }



}

public delegate void JldwInsertedEventHandler(object sender, JldwInsertedEventArgs e);

public class JldwInsertedEventArgs : EventArgs
{
    private YC.SQLServerDAL.Jldw _jldw;

    public JldwInsertedEventArgs(YC.SQLServerDAL.Jldw jldw)
    {
        this._jldw = jldw;
    }

    public YC.SQLServerDAL.Jldw Jldw
    {
        get { return _jldw; }
    }
}