﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControls_SEA_Corporation : System.Web.UI.UserControl
{
    YC.BLL.CorpManage bll_CorpManage = new YC.BLL.CorpManage();

    public event CorporationInsertedEventHandler CorporationCreated;
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
    public Guid CorpId
    {
        get
        {
            Guid corpId = Guid.Empty;
            Guid.TryParse(hfCorpId.Value, out corpId);
            return corpId;
        }
        set
        {
            hfCorpId.Value = value.ToString();
        }
    }

    #endregion

    #region 资源释放

    public override void Dispose()
    {
        bll_CorpManage.Dispose();
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
        Guid corpId = Guid.Empty;
        Guid.TryParse(hfCorpId.Value, out corpId);

        if (e.CommandName == "UpdateCorp")
        {

            YC.SQLServerDAL.Corporation record = bll_CorpManage.GetCorporationById(corpId);

            // 公司名称
            TextBox tbCorpName = formView.FindControl("tbCorpName") as TextBox;
            record.CorpName = tbCorpName.Text;

            // 公司简称
            TextBox tbAbbr = formView.FindControl("tbAbbr") as TextBox;
            record.Abbr = tbAbbr.Text;

            // 公司类别
            DropDownList ddlCorpType = formView.FindControl("ddlCorpType") as DropDownList;
            record.CorpType = ddlCorpType.SelectedValue;

            // 联系人姓名
            TextBox tbLinkmanName = formView.FindControl("tbLinkmanName") as TextBox;
            record.LinkmanName = tbLinkmanName.Text;

            // 固定电话
            record.Telephone = (formView.FindControl("tbTelephone") as TextBox).Text;

            // 手机号码
            TextBox tbMobilePhone = formView.FindControl("tbMobilePhone") as TextBox;
            record.MobilePhone = tbMobilePhone.Text;

            // 手机短号
            TextBox tbMobileShort = formView.FindControl("tbMobileShort") as TextBox;
            record.MobileShort = tbMobileShort.Text;

            // 邮件地址
            record.Email = (formView.FindControl("tbEmail") as TextBox).Text;

            bll_CorpManage.UpdateCorporation(record);
            if (Updated != null)
            {
                Updated(this, new EventArgs());
            }

        }

        if (e.CommandName == "InsertCorp")
        {
            YC.SQLServerDAL.Corporation record = new YC.SQLServerDAL.Corporation();

            // 公司名称
            TextBox tbCorpName = formView.FindControl("tbCorpName") as TextBox;
            record.CorpName = tbCorpName.Text;

            // 联系人姓名
            TextBox tbLinkmanName = formView.FindControl("tbLinkmanName") as TextBox;
            record.LinkmanName = tbLinkmanName.Text;

            // 固定电话
            record.Telephone = (formView.FindControl("tbTelephone") as TextBox).Text;

            // 手机号码
            TextBox tbMobilePhone = formView.FindControl("tbMobilePhone") as TextBox;
            record.MobilePhone = tbMobilePhone.Text;

            // 手机短号
            TextBox tbMobileShort = formView.FindControl("tbMobileShort") as TextBox;
            record.MobileShort = tbMobileShort.Text;

            // 邮件地址
            record.Email = (formView.FindControl("tbEmail") as TextBox).Text;

            YC.SQLServerDAL.Corporation corp = bll_CorpManage.NewCorporation(record);
            if (CorporationCreated != null)
            {
                hfCorpId.Value = corp.CorpId.ToString();
                CorporationInsertedEventArgs args = new CorporationInsertedEventArgs(corp);
                CorporationCreated(this, args);
            }
        }

        if (e.CommandName == "DeleteCorporation")
        {
            bll_CorpManage.DeleteCorporation(corpId);
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
        FormView view = sender as FormView;
        if (view.CurrentMode == FormViewMode.Edit)
        {
            YC.SQLServerDAL.Corporation corp = view.DataItem as YC.SQLServerDAL.Corporation;
            DropDownList ddlCorpType = view.FindControl("ddlCorpType") as DropDownList;
            ddlCorpType.SelectedValue = corp.CorpType;
        }
        //Populate_CorporationTitle();
    }

}

public delegate void CorporationInsertedEventHandler(object sender, CorporationInsertedEventArgs e);

public class CorporationInsertedEventArgs : EventArgs
{
    private YC.SQLServerDAL.Corporation _corp;

    public CorporationInsertedEventArgs(YC.SQLServerDAL.Corporation corp)
    {
        this._corp = corp;
    }

    public YC.SQLServerDAL.Corporation Corporation
    {
        get { return _corp; }
    }
}