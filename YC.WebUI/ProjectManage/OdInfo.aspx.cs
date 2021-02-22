using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProjectManage_OdInfo : System.Web.UI.Page
{
    YC.SQLServerDAL.ProjectInfo projects = new YC.SQLServerDAL.ProjectInfo();
    YC.BLL.ProjectInfo bll_project = new YC.BLL.ProjectInfo();
    YC.SQLServerDAL.OrderDetailInfo odinfo = new YC.SQLServerDAL.OrderDetailInfo();
    YC.BLL.OrderDetailInfo bll_odinfo = new YC.BLL.OrderDetailInfo();
    YC.BLL.ODMaterialdetail bll_odmaterial = new YC.BLL.ODMaterialdetail();
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
        lbAmount.Text = "￥" + projects.Amount.ToString() + "元";
        lbPurchaser.Text = projects.Purchaser;
    }

    private void LoadOrderDetailInfo(Guid proid)
    {
        rptodInfo.DataSource = bll_odinfo.GetodinfoByProId(proid);
        rptodInfo.DataBind();
    }

    private void Init_Load()
    {
        if (Request.QueryString["id"] != null)
        {
            hfProId.Value = Request.QueryString["id"];
            Guid proId = Guid.Empty;
            Guid.TryParse(hfProId.Value, out proId);
            LoadProjectInfo(proId);
            LoadOrderDetailInfo(proId);
        }
    }

    //如何获取主键
    private void InsusButton_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        //判断HiddenField是否存在
        if (button.NamingContainer.FindControl("HiddenField1") != null)
        {
            //存在，把对象转换为HiddenField控件
            HiddenField hf = (HiddenField)button.NamingContainer.FindControl("HiddenField1");
            //取出HiddenField的Value值。
            Guid ODId = Guid.Parse(hf.Value);
            rptMaterialDetail.Visible = true;
            rptMaterialDetail.DataSource = bll_odmaterial.GetodmaterialByODId(ODId);
            rptMaterialDetail.DataBind();
        }
    }

    protected void rptodInfo_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            //判断Button是否存在
            if (e.Item.FindControl("btDetail") != null)
            {
                var sodid = e.CommandArgument.ToString();
                    
                //如果存在，把对象转换为Button。
                Button InsusButton = (Button)e.Item.FindControl("btDetail");
                //取出HiddenField的Value值。
                //string sodid = odm.ODId.ToString();
                Guid ODId = Guid.Parse(sodid);
                rptMaterialDetail.Visible = true;
                rptMaterialDetail.DataSource = bll_odmaterial.GetodmaterialByODId(ODId);
                rptMaterialDetail.DataBind();

            }
        }
    }
}