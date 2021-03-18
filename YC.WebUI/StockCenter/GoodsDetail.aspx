<%@ Page Title="" Language="C#" MasterPageFile="~/shares/MasterPage.master" AutoEventWireup="true" CodeFile="GoodsDetail.aspx.cs" Inherits="StockCenter_GoodsDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- start: Content -->
    <div class="main ">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-heart-o"></i>项目管理</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="index.html">首页</a></li>
                    <li><i class="fa fa-file-text"></i><a href="#">采购中心</a></li>
                    <li><i class="fa fa-heart-o"></i>货单管理</li>
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
                                    <asp:Label ID="lbProName" runat="server" Text="盛虹炼化一体化项目"></asp:Label></strong></h4>
                            </li>
                            <li>
                                <div>
                                    <h5><i class="fa fa-building-o"></i>项目编号</h5>
                                </div>
                                <h4><strong>
                                    <asp:Label ID="lbProNum" runat="server" Text="20B001"></asp:Label></strong></h4>
                            </li>
                        </ul>

                        <hr>

                        <ul class="profile-details">
                            <li>
                                <div>
                                    <h5><i class="fa fa-phone"></i>项目状态</h5>
                                </div>
                                <h4><strong>
                                    <asp:Label ID="lbStatus" runat="server" Text="待出库"></asp:Label></strong></h4>
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
                                    <asp:Label ID="lbPurchaser" runat="server" Text="盛虹炼化"></asp:Label></strong></h4>
                            </li>
                            <hr>
                            <ul class="profile-details">
                                <li>
                                    <div>
                                        <h5><i class="fa fa-building-o"></i>订单编号</h5>
                                    </div>
                                    <h4><strong>
                                        <asp:Label ID="Label2" runat="server" Text="20B001-1"></asp:Label></strong></h4>
                                </li>
                                <li>
                                    <div>
                                        <h5><i class="fa fa-building-o"></i>收货单位</h5>
                                    </div>
                                    <h4><strong>
                                        <asp:Label ID="Label3" runat="server" Text="SH5材料采购组"></asp:Label></strong></h4>
                                </li>
                                <li>
                                    <div>
                                        <h5><i class="fa fa-building-o"></i>收货地址</h5>
                                    </div>
                                    <h4><strong>
                                        <asp:Label ID="Label4" runat="server" Text="徐圩新区炼化项目现场"></asp:Label></strong></h4>
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
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-body">
                        <table class="table table-striped table-responsive">
                            <thead>
                                <tr>
                                    <th class="center">#</th>
                                    <th>车号</th>
                                    <th>司机</th>
                                    <th class="center">联系方式</th>
                                    <th class="right">日期</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="center">1</td>
                                    <td class="left">冀B288736</td>
                                    <td class="left">张三</td>
                                    <td class="center">13458768754</td>
                                    <td class="right">2021-03-01</td>
                                </tr>
                            </tbody>
                        </table>

                    </div>
                </div>

                <!--/row-->

                <!--/col-->
                <div class="panel panel-default">
                    <div class="panel-body">
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
                    </div>
                </div>
            </div>
        </div>
</asp:Content>

