<%@ Page Title="" Language="C#" MasterPageFile="~/shares/MasterPage.master" AutoEventWireup="true" CodeFile="FreightManage.aspx.cs" Inherits="PurchasingCenter_FreightManage" %>

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
                                    <asp:Label ID="lbStatus" runat="server" Text="待送货"></asp:Label></strong></h4>
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
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1
                                    </td>
                                    <td>山东钢铁厂</td>
                                    <td>宁波甬诚</td>
                                    <td>20B001-CG-1</td>
                                    <td>¥8783.98元</td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="#">运杂费</asp:HyperLink></td>
                                </tr>
                                <tr>
                                    <td>2
                                    </td>
                                    <td>日照钢铁厂</td>
                                    <td>宁波甬丁儿</td>
                                    <td>20B001-CG-2</td>
                                    <td>¥4495844.98元</td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink15" runat="server" NavigateUrl="#">运杂费</asp:HyperLink></td>
                                </tr>
                                <tr>
                                    <td>2
                                    </td>
                                    <td>吉林钢铁厂</td>
                                    <td>宁波甬诚</td>
                                    <td>20B001-CG-3</td>
                                    <td>¥387485.77元</td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="#">运杂费</asp:HyperLink></td>
                                </tr>
                            </tbody>
                        </table>
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
                                    <tr>
                                        <td class="left"><strong>费用类别：</strong></td>
                                        <td class="left">
                                            <select id="select" name="select" size="1">
                                                <option value="0">请选择....</option>
                                                <option value="1">装货费</option>
                                                <option value="2">卸货费</option>
                                                <option value="3">运输费</option>
                                                <option value="4">加班费</option>
                                            </select></td>
                                    </tr>
                                    <tr>
                                        <td class="left"><strong>金额：</strong></td>
                                        <td class="left">
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td class="left"><strong>备注：</strong></td>
                                        <td class="left">
                                            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="row">

                            <table class="table table-clear">
                                <tbody>
                                    <tr>
                                        <td class="left"><strong>供货商：</strong></td>
                                        <td class="left">山东钢铁厂</td>
                                    </tr>
                                    <tr>
                                        <td class="left"><strong>合同编号：</strong></td>
                                        <td class="left">20B001-CG-1</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <!--/col-->
                        <table class="table table-striped table-responsive">
                            <thead>
                                <tr>
                                    <th class="center">#</th>
                                    <th>费用类别</th>
                                    <th>金额</th>
                                    <th class="center">备注</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="center">1</td>
                                    <td class="center">装货费</td>
                                    <td class="center">432.23元</td>
                                    <td class="center">中转</td>
                                </tr>
                                <tr>
                                    <td class="center">2</td>
                                    <td class="center">卸货费</td>
                                    <td class="center">2322。34元</td>
                                    <td class="center">中转</td>
                                </tr>
                                <tr>
                                    <td class="center">3</td>
                                    <td class="center">装加班费</td>
                                    <td class="center">3345.23元</td>
                                    <td class="center">中转</td>
                                </tr>
                                <tr>
                                    <td class="center">4</td>
                                    <td class="center">运输费</td>
                                    <td class="center">233.23元</td>
                                    <td class="center">中转</td>
                                </tr>
                                <tr>
                                    <td class="center">5</td>
                                    <td class="center">加工费</td>
                                    <td class="center">2345.34元</td>
                                    <td class="center">中转</td>
                                </tr>
                            </tbody>
                        </table>
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

