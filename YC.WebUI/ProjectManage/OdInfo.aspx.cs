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
    YC.SQLServerDAL.SubProjectInfo subprojects = new YC.SQLServerDAL.SubProjectInfo();
    YC.BLL.SubProjectInfo bll_subprojects = new YC.BLL.SubProjectInfo();
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
    }

    private void LoadSubProjectInfo(Guid Subid)
    {
        subprojects = bll_subprojects.GetSubProBySubProId(Subid);
        lbSubProName.Text = subprojects.SubProName;
        lbSubProNum.Text = subprojects.SubProNum;
        lbSubAmount.Text = "￥" + subprojects.SubAmount.ToString() + "元";
        lbSubPurchaser.Text = subprojects.SubPurchaser;
    }

    private void LoadOrderDetailInfo(Guid Subid)
    {
        rptodInfo.DataSource = bll_odinfo.GetodinfoBySubProId(Subid);
        rptodInfo.DataBind();
    }

    private void Init_Load()
    {
        if (Request.QueryString["id"] != null && Request.QueryString["Subid"] != null)
        {
            hfProId.Value = Request.QueryString["id"];
            hfSubProId.Value = Request.QueryString["Subid"];
            Guid proId = Guid.Empty;
            Guid Subid = Guid.Empty;
            Guid.TryParse(hfProId.Value, out proId);
            Guid.TryParse(hfSubProId.Value, out Subid);
            LoadProjectInfo(proId);
            LoadSubProjectInfo(Subid);
            LoadOrderDetailInfo(Subid);
        }
    }

    protected void rptodInfo_ItemCreated(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            //判断Button是否存在
            if (e.Item.FindControl("Button1") != null)
            {
                //如果存在，把对象转换为Button。
                Button InsusButton = (Button)e.Item.FindControl("btDetail");
                //产生Click事件
                InsusButton.Click += new EventHandler(InsusButton_Click);
            }
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
}