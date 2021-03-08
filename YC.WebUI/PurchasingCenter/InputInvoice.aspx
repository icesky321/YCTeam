<%@ Page Title="" Language="C#" MasterPageFile="~/shares/MasterPage.master" AutoEventWireup="true" CodeFile="InputInvoice.aspx.cs" Inherits="PurchasingCenter_InputInvoice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <!-- start: Content -->
    <div class="main ">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-heart-o"></i>项目管理</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="index.html">首页</a></li>
                    <li><i class="fa fa-file-text"></i><a href="#">采购中心</a></li>
                    <li><i class="fa fa-heart-o"></i>进项发票管理</li>
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
                                    <h5><i class="fa fa-thumbs-up"></i>项目名称</h5>
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
                        <h2><i class="fa fa-life-bouy red"></i><strong>Salary</strong></h2>
                        <div class="panel-actions">
                            <a href="charts-xcharts.html#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                            <a href="widgets.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                            <a href="widgets.html#" class="btn-close"><i class="fa fa-times"></i></a>
                        </div>
                    </div>
                    <div class="panel-body">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>#
                                    </th>
                                    <th>供应商</th>
                                    <th>采购商</th>
                                    <th>合同编号</th>
                                    <th>合同金额</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1
                                    </td>
                                    <td>山东钢铁厂</td>
                                    <td>宁波甬诚</td>
                                    <td>2010BC04736273</td>
                                    <td>¥8783.98元</td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/PurchasingCenter/NewOrder.aspx">装货单</asp:HyperLink></td>
                                </tr>
                                <tr>
                                    <td>2
                                    </td>
                                    <td>日照钢铁厂</td>
                                    <td>宁波甬丁儿</td>
                                    <td>20210BC2873663</td>
                                    <td>¥4495844.98元</td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/PurchasingCenter/NewOrder.aspx">装货单</asp:HyperLink></td>
                                </tr>
                                <tr>
                                    <td>2
                                    </td>
                                    <td>吉林钢铁厂</td>
                                    <td>宁波甬诚</td>
                                    <td>2010BC2903974</td>
                                    <td>¥387485.77元</td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/PurchasingCenter/NewOrder.aspx">装货单</asp:HyperLink></td>
                                    <td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-body">
                        <!--/col-->
                        <table class="table table-striped table-responsive">
                            <thead>
                                <tr>
                                    <th class="center">#</th>
                                    <th>购买方</th>
                                    <th>销售方</th>
                                    <th class="center">开票金额</th>
                                    <th class="right">开票日期日期</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="center">1</td>
                                    <td class="left">宁波市镇海甬诚物资有限公司</td>
                                    <td class="left">江苏金贸钢宝电子商务有限公司</td>
                                    <td class="center">¥3332.46元</td>
                                    <td class="right">2021-03-01</td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/PurchasingCenter/NewOrder.aspx">物料明细 </asp:HyperLink></td>
                                    <td>
                                </tr>
                                <tr>
                                    <td class="center">2</td>
                                    <td class="left">宁波市镇海甬诚物资有限公司</td>
                                    <td class="left">江苏金贸钢宝电子商务有限公司</td>
                                    <td class="center">¥3332.46元</td>
                                    <td class="right">2021-03-01</td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/PurchasingCenter/NewOrder.aspx">物料明细 </asp:HyperLink></td>
                                    <td>
                                </tr>
                                <tr>
                                    <td class="center">2</td>
                                    <td class="left">宁波市镇海甬诚物资有限公司</td>
                                    <td class="left">江苏金贸钢宝电子商务有限公司</td>
                                    <td class="center">¥3332.46元</td>
                                    <td class="right">2021-03-01</td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/PurchasingCenter/NewOrder.aspx">物料明细 </asp:HyperLink></td>
                                    <td>
                                </tr>
                                <tr>
                                    <td class="center">2</td>
                                    <td class="left">宁波市镇海甬诚物资有限公司</td>
                                    <td class="left">江苏金贸钢宝电子商务有限公司</td>
                                    <td class="center">¥3332.46元</td>
                                    <td class="right">2021-03-01</td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/PurchasingCenter/NewOrder.aspx">物料明细 </asp:HyperLink></td>
                                    <td>
                                </tr>
                                <tr>
                                    <td class="center">2</td>
                                    <td class="left">宁波市镇海甬诚物资有限公司</td>
                                    <td class="left">江苏金贸钢宝电子商务有限公司</td>
                                    <td class="center">¥3332.46元</td>
                                    <td class="right">2021-03-01</td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/PurchasingCenter/NewOrder.aspx">物料明细 </asp:HyperLink></td>
                                    <td>
                                </tr>
                            </tbody>
                        </table>

                        <!--/row-->
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="row">

                            <table class="table table-clear">
                                <tbody>
                                    <tr>
                                        <td class="left"><strong>供货商：</strong></td>
                                        <td class="left">唐山盛材钢铁厂</td>
                                    </tr>
                                    <tr>
                                        <td class="left"><strong>合同编号：</strong></td>
                                        <td class="left">57401-20-1277-CV-R-M-1001</td>
                                    </tr>
                                </tbody>
                            </table>
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
                                    <th class="right">供货数量</th>
                                    <th class="right">供货单价</th>
                                    <th class="right">合计单价</th>
                                    <th class="right">合计总价价</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="center">1</td>
                                    <td class="left">低温板</td>
                                    <td class="left">CHHNABZTA _150X75X5X7</td>
                                    <td class="center">HN150X75X5X7/Q235B</td>
                                    <td class="right">沙钢</td>
                                    <td class="right">
                                        <asp:TextBox ID="TextBox3" runat="server">543</asp:TextBox><asp:HyperLink ID="HyperLink1" runat="server">更新</asp:HyperLink>

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
                                    <td class="right">345</td>
                                    <td class="right">345</td>
                                    <td class="right">5676</td>
                                    <td class="right">12000</td>
                                </tr>
                                <tr>
                                    <td class="center">2</td>
                                    <td class="left">低温板</td>
                                    <td class="left">CHHNABZTA _150X75X5X7</td>
                                    <td class="center">HN150X75X5X7/Q235B</td>
                                    <td class="right">沙钢</td>
                                    <td class="right">
                                        <asp:TextBox ID="TextBox4" runat="server">543</asp:TextBox><asp:HyperLink ID="HyperLink2" runat="server">更新</asp:HyperLink></td>
                                    <td class="right">345</td>
                                    <td class="right">345</td>
                                    <td class="right">5676</td>
                                    <td class="right">12000</td>
                                </tr>
                                <tr>
                                    <td class="center">3</td>
                                    <td class="left">低温板</td>
                                    <td class="left">CHHNABZTA _200X100X5.5X8</td>
                                    <td class="center">HN150X75X5X7/Q235B</td>
                                    <td class="right">沙钢</td>
                                    <td class="right">
                                        <asp:TextBox ID="TextBox5" runat="server">543</asp:TextBox><asp:HyperLink ID="HyperLink3" runat="server">更新</asp:HyperLink></td>
                                    <td class="right">345</td>
                                    <td class="right">345</td>
                                    <td class="right">5676</td>
                                    <td class="right">12000</td>
                                </tr>
                                <tr>
                                    <td class="center">4</td>
                                    <td class="left">低温板</td>
                                    <td class="left">CHHNABZTA _175X175X7.5X11</td>
                                    <td class="center">HN150X75X5X7/Q235B</td>
                                    <td class="right">鞍钢</td>
                                    <td class="right">
                                        <asp:TextBox ID="TextBox6" runat="server">543</asp:TextBox><asp:HyperLink ID="HyperLink7" runat="server">更新</asp:HyperLink></td>
                                    <td class="right">345</td>
                                    <td class="right">345</td>
                                    <td class="right">5676</td>
                                    <td class="right">12000</td>
                                </tr>
                                <tr>
                                    <td class="center">5</td>
                                    <td class="left">低温板</td>
                                    <td class="left">VMSD202Z_8X1800X8500</td>
                                    <td class="center">HN150X75X5X7/Q235B</td>
                                    <td class="right">鞍钢</td>
                                    <td class="right">
                                        <asp:TextBox ID="TextBox7" runat="server">543</asp:TextBox><asp:HyperLink ID="HyperLink8" runat="server">更新</asp:HyperLink></td>
                                    <td class="right">345</td>
                                    <td class="right">345</td>
                                    <td class="right">5676</td>
                                    <td class="right">12000</td>
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
                    </div>
                </div>

            </div>
            <!--/invoice-->
        </div>
        <!--/.col-->
    </div>

    <!--/.row profile-->
    <!-- end: Content -->
</asp:Content>

