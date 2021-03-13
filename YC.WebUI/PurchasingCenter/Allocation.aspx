<%@ Page Title="" Language="C#" MasterPageFile="~/shares/MasterPage.master" AutoEventWireup="true" CodeFile="Allocation.aspx.cs" Inherits="PurchasingCenter_Allocation" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main ">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-heart-o"></i>项目管理</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="index.html">首页</a></li>
                    <li><i class="fa fa-file-text"></i><a href="#">采购中心</a></li>
                    <li><i class="fa fa-heart-o"></i>调拨单</li>
                </ol>
            </div>
        </div>
        <div class="row profile">

            <div class="col-md-3">

                <div class="panel panel-default">
                    <div class="panel-body">

                        <ul class="profile-details">
                            <li>
                                <div>
                                    <asp:HiddenField ID="hfProId" runat="server" />
                                    <asp:HiddenField ID="hfSubProId" runat="server" />
                                    <h5><i class="fa fa-thumbs-up"></i>原项目名称</h5>
                                </div>
                                <h4><strong>
                                    <asp:Label ID="lbProName" runat="server" Text="镇海炼化1号地块乙烯项目"></asp:Label></strong></h4>
                            </li>
                            <li>
                                <div>
                                    <h5><i class="fa fa-building-o"></i>项目编号</h5>
                                </div>
                                <h4><strong>
                                    <asp:Label ID="lbProNum" runat="server" Text="ZHLH2101#DK"></asp:Label></strong></h4>
                            </li>
                        </ul>

                        <hr>

                        <ul class="profile-details">
                            <li>
                                <div>
                                    <h5><i class="fa fa-phone"></i>项目状态</h5>
                                </div>
                                <h4><strong>
                                    <asp:Label ID="lbStatus" runat="server" Text="待投标"></asp:Label></strong></h4>
                            </li>
                        </ul>
                        <hr>
                        <ul class="profile-details">
                            <li>
                                <div>
                                    <h5><i class="fa fa-building-o"></i>订单金额</h5>
                                </div>
                                <h4><strong>
                                    <asp:Label ID="lbAmount" runat="server" Text="￥2000000.0000元"></asp:Label></strong></h4>
                            </li>
                            <li>
                                <div>
                                    <h5><i class="fa fa-building-o"></i>采购商</h5>
                                </div>
                                <h4><strong>
                                    <asp:Label ID="lbPurchaser" runat="server" Text="宁波天翼石化重型设备制造有限公司"></asp:Label></strong></h4>
                            </li>
                            <hr>
                            <ul class="profile-details">
                                <li>
                                    <div>
                                        <h5><i class="fa fa-building-o"></i>订单编号</h5>
                                    </div>
                                    <h4><strong>
                                        <asp:Label ID="Label2" runat="server" Text="20BC202001-1"></asp:Label></strong></h4>
                                </li>
                                <li>
                                    <div>
                                        <h5><i class="fa fa-building-o"></i>收货单位</h5>
                                    </div>
                                    <h4><strong>
                                        <asp:Label ID="Label3" runat="server" Text="公用工程部"></asp:Label></strong></h4>
                                </li>
                                <li>
                                    <div>
                                        <h5><i class="fa fa-building-o"></i>收货地址</h5>
                                    </div>
                                    <h4><strong>
                                        <asp:Label ID="Label4" runat="server" Text="宁波和义大道"></asp:Label></strong></h4>
                                </li>
                            </ul>
                        </ul>
                    </div>

                </div>

            </div>
            <!--/.col-->
            <div class="col-md-9">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2><i class="fa fa-indent red"></i><strong>调拨项目</strong></h2>
                    </div>
                    <div class="panel-body">
                        <div class="row profile">
                            <div class="row">
                                <div class="col-lg-12">
                                    <%-- <ol class="breadcrumb">--%>
                                    <li>项目名称：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" WatermarkText="可模糊查询" TargetControlID="TextBox1" />
                                        合同编号：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" WatermarkText="可模糊查询" TargetControlID="TextBox2" />
                                        <asp:Button ID="btFinish" runat="server" CausesValidation="True" Text="搜索" CssClass="btn btn-primary button-finish" />
                                    </li>
                                </div>

                                <%--</ol>--%>
                            </div>
                            <div class="col-lg-12">
                                <table class="table table-striped table-bordered bootstrap-datatable datatable">
                                    <thead>
                                        <tr>
                                            <th>项目编码</th>
                                            <th>项目名称</th>
                                            <th>采购单位</th>
                                            <th>采购金额</th>
                                            <th>项目负责人</th>
                                            <th>中标日期</th>
                                            <th>项目状态</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>ZHLH-YX-2101</td>
                                            <td>镇海炼化1# 地块乙烯项目</td>
                                            <td>镇海炼化</td>
                                            <td>¥60000元</td>
                                            <td>叶经理</td>
                                            <td>2021-02-10</td>
                                            <td>待询价</td>
                                            <td>
                                                <a class="btn btn-success" href="#">详情
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>YCDJ-JW-2102</td>
                                            <td>南京雄盛乙炔项目基地</td>
                                            <td>南京雄盛</td>
                                            <td>¥80000元</td>
                                            <td>梁经理</td>
                                            <td>2021-03-10</td>
                                            <td>待发货</td>
                                            <td>
                                                <a class="btn btn-success" href="#">详情
                                                </a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h2><i class="fa fa-table red"></i><span class="break"></span><strong>请购单信息</strong></h2>
                                <div class="panel-actions">
                                    <a href="table.html#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                                    <a href="table.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                                    <a href="table.html#" class="btn-close"><i class="fa fa-times"></i></a>
                                </div>
                            </div>

                            <div class="panel-body">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>#
                                            </th>
                                            <th>送货部门</th>
                                            <th>送货地址</th>
                                            <th>送货日期</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1
                                            </td>
                                            <td>综合服务部</td>
                                            <td>和义大道</td>
                                            <td>2021-6-22</td>
                                            <td>
                                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="#">添加调拨单</asp:HyperLink></td>
                                        </tr>
                                        <tr>
                                            <td>2
                                            </td>
                                            <td>物资管理部</td>
                                            <td>来福士广场</td>
                                            <td>2021--7-23</td>
                                            <td>
                                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="#">添加调拨单</asp:HyperLink></td>
                                        </tr>
                                        <tr>
                                            <td>2
                                            </td>
                                            <td>物资管理部</td>
                                            <td>来福士广场</td>
                                            <td>2021--7-23</td>
                                            <td>
                                                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="#">添加调拨单</asp:HyperLink>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="form-group">
                            <div class="form-group">
                                <label class="col-lg-2 col-md-2 col-sm-12 control-label">供货单位</label>
                                <div class="col-lg-10 col-md-10">
                                    <input type="text" class="form-control" value="宁波市镇海甬诚物资有限公司">
                                </div>
                            </div>
                            <br />
                            <div class="form-group">
                                <label class="col-lg-2 col-md-2 col-sm-12 control-label">采购商</label>
                                <div class="col-lg-10 col-md-10">
                                    <input type="text" class="form-control" value="盛虹炼化">
                                </div>
                            </div>
                            <br />
                            <div class="form-group">
                                <label class="col-lg-2 col-md-2 col-sm-12 control-label">发货日期</label>
                                <div class="col-lg-4 col-md-4">
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox1" />
                                </div>
                                <label class="col-lg-2 col-md-2 col-sm-12 control-label">到货日期</label>
                                <div class="col-lg-4 col-md-4">
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="TextBox2" />
                                </div>
                            </div>
                            <br />
                            <div class="form-group">
                                <label class="col-lg-2 col-md-2 col-sm-12 control-label">车牌号</label>
                                <div class="col-lg-4 col-md-4">
                                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                </div>
                                <label class="col-lg-2 col-md-2 col-sm-12 control-label">联系方式</label>
                                <div class="col-lg-4 col-md-4">
                                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <div class="form-group">
                                <label class="col-lg-2 col-md-2 col-sm-12 control-label">供应商联系人</label>
                                <div class="col-lg-4 col-md-4">
                                    <asp:TextBox ID="TextBox10" runat="server">梁飞强</asp:TextBox>
                                </div>
                                <label class="col-lg-2 col-md-2 col-sm-12 control-label">联系方式</label>
                                <div class="col-lg-4 col-md-4">
                                    <asp:TextBox ID="TextBox11" runat="server">13626843660</asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <br />
                        <div class="form-group">
                            <label class="col-lg-2 col-md-2 col-sm-12 control-label">备注:</label>
                            <div class="col-lg-10 col-md-10">
                                <asp:TextBox ID="TextBox12" runat="server" TextMode="MultiLine" Width="70%"></asp:TextBox>
                            </div>
                        </div>

                    </div>
                    <!--/col-->
                    <table class="table table-striped table-responsive">
                        <thead>
                            <tr>
                                <th class="center">#</th>
                                <th>物料名称</th>
                                <th>物料编码</th>
                                <th class="center">规格型号</th>
                                <th class="center">产地</th>
                                <th class="center">供货数量</th>
                                <th class="center">供货单价</th>
                                <th class="center">合计单价</th>
                                <th class="center">合计总价价</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="center">1</td>
                                <td class="center">低温板</td>
                                <td class="center">CHHNABZTA _150X75X5X7</td>
                                <td class="center">HN150X75X5X7/Q235B</td>
                                <td class="center">沙钢</td>
                                <td class="center">
                                    <asp:TextBox ID="TextBox5" runat="server">543</asp:TextBox><asp:HyperLink ID="HyperLink4" runat="server">更新</asp:HyperLink>

                                    <div class="dropdown pull-right">
                                        <a class="fa fa-comments" data-toggle="dropdown" href="widgets.html#"></a>
                                        <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                                            <li><a href="widgets.html#">变更时间       价格</a></li>
                                            <li><a href="widgets.html#"><i style="text-align: left">2021-1-3</i>       <i style="text-align: right"></i>345</a></li>
                                            <li><a href="widgets.html#">2021-1-6       347</a></li>
                                            <li><a href="widgets.html#">2021-1-9       344</a></li>
                                            <li><a href="widgets.html#">2021-2-3       355</a></li>
                                        </ul>
                                    </div>
                                </td>
                                <td class="center">345</td>
                                <td class="center">345</td>
                                <td class="center">5676</td>
                                <td class="center">12000</td>
                            </tr>
                            <tr>
                                <td class="center">2</td>
                                <td class="center">低温板</td>
                                <td class="center">CHHNABZTA _150X75X5X7</td>
                                <td class="center">HN150X75X5X7/Q235B</td>
                                <td class="center">沙钢</td>
                                <td class="center">
                                    <asp:TextBox ID="TextBox6" runat="server">543</asp:TextBox><asp:HyperLink ID="HyperLink5" runat="server">更新</asp:HyperLink></td>
                                <td class="center">345</td>
                                <td class="center">345</td>
                                <td class="center">5676</td>
                                <td class="center">12000</td>
                            </tr>
                            <tr>
                                <td class="center">3</td>
                                <td class="center">低温板</td>
                                <td class="center">CHHNABZTA _200X100X5.5X8</td>
                                <td class="center">HN150X75X5X7/Q235B</td>
                                <td class="center">沙钢</td>
                                <td class="center">
                                    <asp:TextBox ID="TextBox7" runat="server">543</asp:TextBox><asp:HyperLink ID="HyperLink6" runat="server">更新</asp:HyperLink></td>
                                <td class="center">345</td>
                                <td class="center">345</td>
                                <td class="center">5676</td>
                                <td class="center">12000</td>
                            </tr>
                            <tr>
                                <td class="center">4</td>
                                <td class="center">低温板</td>
                                <td class="center">CHHNABZTA _175X175X7.5X11</td>
                                <td class="center">HN150X75X5X7/Q235B</td>
                                <td class="center">鞍钢</td>
                                <td class="center">
                                    <asp:TextBox ID="TextBox13" runat="server">543</asp:TextBox><asp:HyperLink ID="HyperLink7" runat="server">更新</asp:HyperLink></td>
                                <td class="center">345</td>
                                <td class="center">345</td>
                                <td class="center">5676</td>
                                <td class="center">12000</td>
                            </tr>
                            <tr>
                                <td class="center">5</td>
                                <td class="center">低温板</td>
                                <td class="center">VMSD202Z_8X1800X8500</td>
                                <td class="center">HN150X75X5X7/Q235B</td>
                                <td class="center">鞍钢</td>
                                <td class="center">
                                    <asp:TextBox ID="TextBox14" runat="server">543</asp:TextBox><asp:HyperLink ID="HyperLink8" runat="server">更新</asp:HyperLink></td>
                                <td class="center">345</td>
                                <td class="center">345</td>
                                <td class="center">5676</td>
                                <td class="center">12000</td>
                            </tr>
                        </tbody>
                    </table>

                    <div class="row">

                        <div class="col-lg-4 col-lg-offset-4 col-sm-5 col-sm-offset-2 recap pull-right">
                            <table class="table table-clear">
                                <tbody>
                                    <tr>
                                        <td class="right"><strong>实际供货量</strong></td>
                                        <td class="right">345</td>
                                    </tr>
                                    <tr>
                                        <td class="right"><strong>实际总金额</strong></td>
                                        <td class="right">¥888738元</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <!--/col-->

                    </div>
                    <!--/row-->
                    <div style="text-align: center">
                        <button type="submit" class="btn btn-sm btn-success"><i class="fa fa-dot-circle-o"></i>发货</button>
                        <br />
                    </div>
                </div>
            </div>
        </div>
</asp:Content>

