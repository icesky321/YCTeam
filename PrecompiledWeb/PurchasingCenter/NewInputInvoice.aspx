<%@ page title="" language="C#" masterpagefile="~/shares/MasterPage.master" autoeventwireup="true" inherits="PurchasingCenter_NewInputInvoice, App_Web_orgjpqpt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main ">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-heart-o"></i>项目管理</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="index.html">首页</a></li>
                    <li><i class="fa fa-file-text"></i><a href="#">项目管理</a></li>
                    <li><i class="fa fa-heart-o"></i>订单详情</li>
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
                        </ul>
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
                        <hr>
                        <ul class="profile-details">
                            <li>
                                <div>
                                    <h5><i class="fa fa-building-o"></i>供应商</h5>
                                </div>
                                <h4><strong>
                                    <asp:Label ID="Label1" runat="server" Text="日照钢铁厂"></asp:Label></strong></h4>
                            </li>
                            <li>
                                <div>
                                    <h5><i class="fa fa-building-o"></i>采购商</h5>
                                </div>
                                <h4><strong>
                                    <asp:Label ID="Label5" runat="server" Text="宁波甬丁儿"></asp:Label></strong></h4>
                            </li>
                            <li>
                                <div>
                                    <h5><i class="fa fa-building-o"></i>合同金额</h5>
                                </div>
                                <h4><strong>
                                    <asp:Label ID="Label6" runat="server" Text="¥8783.98元"></asp:Label></strong></h4>
                            </li>
                        </ul>
                    </div>

                </div>

            </div>
            <!--/.col-->

            <div class="col-md-9">
                <div class="form-group">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2><strong>进项发票登记</strong></h2>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label class="col-lg-2 col-md-2 col-sm-12 control-label">供货单位</label>
                                <div class="col-lg-10 col-md-10">
                                    <input type="text" class="form-control" value="山东钢铁厂">
                                </div>
                                <br />
                            </div>
                            <div class="form-group">
                                <label class="col-lg-2 col-md-2 col-sm-12 control-label">采购单位</label>
                                <div class="col-lg-10 col-md-10">
                                    <input type="text" class="form-control" value="宁波镇海甬诚物资有限公司">
                                </div>
                                <br />
                            </div>
                            <div class="form-group">
                                <label class="col-lg-2 col-md-2 col-sm-12 control-label">发票金额</label>
                                <div class="col-lg-10 col-md-10">
                                    <input type="text" class="form-control" value="">
                                </div>
                                <br />
                            </div>
                            <div class="form-group">
                                <label class="col-lg-2 col-md-2 col-sm-12 control-label">开票日期 </label>
                                <div class="col-lg-10 col-md-10">
                                    <input type="text" class="form-control" value="">
                                </div>
                                <br />
                            </div>
                               <%--<table class="table table-striped table-responsive">
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
                        </table>--%>
                            <div class="form-group" style="text-align: center">
                                <a class="btn btn-success" href="InputInvoice.aspx">添加
                                </a>
                            </div>
                        </div>
                        <!--/col-->
                     
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

