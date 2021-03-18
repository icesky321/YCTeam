<%@ Page Title="" Language="C#" MasterPageFile="~/shares/MasterPage.master" AutoEventWireup="true" CodeFile="PayManage.aspx.cs" Inherits="PurchasingCenter_PayManage" %>

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
                                    <asp:Label ID="lbStatus" runat="server" Text="待付款"></asp:Label></strong></h4>
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
                        </ul>
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
                <div class="panel panel-default">

                    <div class="panel-heading">
                        <h2><i class="fa fa-indent red"></i><strong>采购付款申请单</strong></h2>
                    </div>
                    <div class="panel-body">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th class="center">#
                                    </th>
                                    <th class="center">供应商</th>
                                    <th class="center">采购商</th>
                                    <th class="center">合同编号</th>
                                    <th class="center">合同金额</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <asp:CheckBox ID="CheckBox1" runat="server" />
                                    </td>
                                    <td class="center">1
                                    </td>
                                    <td class="center">山东钢铁厂</td>
                                    <td class="center">宁波甬诚</td>
                                    <td class="center">20B001-CG-1</td>
                                    <td class="center">¥8783.98元</td>
                                    <td class="center">
                                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="#">物料明细</asp:HyperLink></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:CheckBox ID="CheckBox2" runat="server" />
                                    </td>
                                    <td class="center">2
                                    </td>
                                    <td class="center">日照钢铁厂</td>
                                    <td class="center">宁波甬丁儿</td>
                                    <td class="center">20B001-CG-2</td>
                                    <td class="center">¥4495844.98元</td>
                                    <td class="center">
                                        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="#">物料明细</asp:HyperLink></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:CheckBox ID="CheckBox3" runat="server" />
                                    </td>
                                    <td class="center">2
                                    </td>
                                    <td class="center">吉林钢铁厂</td>
                                    <td class="center">宁波甬诚</td>
                                    <td class="center">20B001-CG-3</td>
                                    <td class="center">¥387485.77元</td>
                                    <td class="center">
                                        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="#">物料明细</asp:HyperLink></td>
                                </tr>
                            </tbody>
                        </table>

                        <div class="row">

                            <div class="col-lg-4 col-lg-offset-4 col-sm-5 col-sm-offset-2 recap pull-right">
                                <table class="table table-clear">
                                    <tbody>
                                        <tr>
                                            <td class="right"><strong>总金额</strong></td>
                                            <td class="right">¥888738元</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <!--/col-->

                        </div>
                    </div>
                    <div class="panel-body">
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
                                            <th></th>
                                            <th class="center">#</th>
                                            <th>物料名称</th>
                                            <th>物料编码</th>
                                            <th class="center">规格型号</th>
                                            <th class="center">产地</th>
                                            <th class="center">供货数量</th>
                                            <th class="center">供货单价</th>
                                            <th class="center">合计单价</th>
                                            <th class="center">合计总价价</th>
                                            <th>交货如期</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <asp:CheckBox ID="CheckBox4" runat="server" />
                                            </td>
                                            <td class="center">1</td>
                                            <td class="center">低温板</td>
                                            <td class="center">CHHNABZTA _150X75X5X7</td>
                                            <td class="center">
                                                <asp:TextBox ID="TextBox1" runat="server">HN150X75X5X7/Q235B</asp:TextBox><asp:HyperLink ID="HyperLink9" runat="server">更新</asp:HyperLink></td>
                                            <td class="center">沙钢</td>
                                            <td class="center">
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
                                            <td class="center">345</td>
                                            <td class="center">345</td>
                                            <td class="center">5676</td>
                                            <td class="center">12000</td>
                                            <td class="center">2021-3-13</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:CheckBox ID="CheckBox5" runat="server" />
                                            </td>
                                            <td class="center">2</td>
                                            <td class="center">低温板</td>
                                            <td class="center">CHHNABZTA _150X75X5X7</td>
                                            <td class="center">
                                                <asp:TextBox ID="TextBox2" runat="server">HN150X75X5X7/Q235B</asp:TextBox><asp:HyperLink ID="HyperLink10" runat="server">更新</asp:HyperLink></td>
                                            <td class="center">沙钢</td>
                                            <td class="center">
                                                <asp:TextBox ID="TextBox4" runat="server">543</asp:TextBox><asp:HyperLink ID="HyperLink2" runat="server">更新</asp:HyperLink></td>
                                            <td class="center">345</td>
                                            <td class="center">345</td>
                                            <td class="center">5676</td>
                                            <td class="center">12000</td>
                                            <td class="center">2021-3-13</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:CheckBox ID="CheckBox6" runat="server" />
                                            </td>
                                            <td class="center">3</td>
                                            <td class="center">低温板</td>
                                            <td class="center">CHHNABZTA _200X100X5.5X8</td>
                                            <td class="center">
                                                <asp:TextBox ID="TextBox8" runat="server">HN150X75X5X7/Q235B</asp:TextBox><asp:HyperLink ID="HyperLink11" runat="server">更新</asp:HyperLink></td>
                                            <td class="center">沙钢</td>
                                            <td class="center">
                                                <asp:TextBox ID="TextBox5" runat="server">543</asp:TextBox><asp:HyperLink ID="HyperLink3" runat="server">更新</asp:HyperLink></td>
                                            <td class="center">345</td>
                                            <td class="center">345</td>
                                            <td class="center">5676</td>
                                            <td class="center">12000</td>
                                            <td class="center">2021-3-13</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:CheckBox ID="CheckBox7" runat="server" />
                                            </td>
                                            <td class="center">4</td>
                                            <td class="center">低温板</td>
                                            <td class="center">CHHNABZTA _175X175X7.5X11</td>
                                            <td class="center">
                                                <asp:TextBox ID="TextBox9" runat="server">HN150X75X5X7/Q235B</asp:TextBox><asp:HyperLink ID="HyperLink12" runat="server">更新</asp:HyperLink></td>
                                            <td class="center">鞍钢</td>
                                            <td class="center">
                                                <asp:TextBox ID="TextBox6" runat="server">543</asp:TextBox><asp:HyperLink ID="HyperLink7" runat="server">更新</asp:HyperLink></td>
                                            <td class="center">345</td>
                                            <td class="center">345</td>
                                            <td class="center">5676</td>
                                            <td class="center">12000</td>
                                            <td class="center">2021-3-13</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:CheckBox ID="CheckBox8" runat="server" />
                                            </td>
                                            <td class="center">5</td>
                                            <td class="center">低温板</td>
                                            <td class="center">VMSD202Z_8X1800X8500</td>
                                            <td class="center">
                                                <asp:TextBox ID="TextBox10" runat="server">HN150X75X5X7/Q235B</asp:TextBox><asp:HyperLink ID="HyperLink13" runat="server">更新</asp:HyperLink></td>
                                            <td class="center">鞍钢</td>
                                            <td class="center">
                                                <asp:TextBox ID="TextBox7" runat="server">543</asp:TextBox><asp:HyperLink ID="HyperLink8" runat="server">更新</asp:HyperLink></td>
                                            <td class="center">345</td>
                                            <td class="center">345</td>
                                            <td class="center">5676</td>
                                            <td class="center">12000</td>
                                            <td class="center">2021-3-13</td>
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
                        <div class="form-group">
                            <div class="form-group">
                                <label class="col-lg-2 col-md-2 col-sm-12 control-label">供货单位</label>
                                <div class="col-lg-10 col-md-10">
                                    <input type="text" class="form-control" value="日照钢铁厂">
                                </div>
                            </div>
                            <hr>
                            <br />

                            <div class="form-group">
                                <div class="form-group">
                                    <label class="col-lg-2 col-md-2 col-sm-12 control-label">开户行</label>
                                    <div class="col-lg-4 col-md-4">
                                        <input type="text" class="form-control" value="中国工商银行日照分行">
                                    </div>
                                    <label class="col-lg-2 col-md-2 col-sm-12 control-label">账号</label>
                                    <div class="col-lg-4 col-md-4">
                                        <input type="text" class="form-control" value="39847483837248495">
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <br />
                            <div class="form-group">
                                <label class="col-md-2 control-label" for="select">付款机构</label>
                                <div class="col-md-4">
                                    <select id="select" name="select" class="form-control" size="1">
                                        <option value="0">请选择....</option>
                                        <option value="1">宁波甬诚</option>
                                        <option value="2">宁波甬丁儿</option>
                                    </select>
                                </div>
                                <label class="col-lg-2 col-md-2 col-sm-12 control-label">付款编号</label>
                                <div class="col-lg-4 col-md-4">
                                    <input type="text" id="disabled-input2" name="disabled-input" class="form-control" placeholder="FK2021987384743" disabled>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <div class="form-group">
                            <div class="form-group">
                                <label class="col-lg-2 col-md-2 col-sm-12 control-label">合同号</label>
                                <div class="col-lg-4 col-md-4">
                                    <input type="text" id="disabled-input" name="disabled-input" class="form-control" placeholder="20BC202001-1" disabled>
                                </div>
                                <label class="col-lg-2 col-md-2 col-sm-12 control-label">金额</label>
                                <div class="col-lg-4 col-md-4">
                                    <input type="text" id="disabled-input1" name="disabled-input" class="form-control">
                                </div>
                            </div>
                        </div>
                        <hr>
                        <br />
                        <br />
                        <br />
                        <div style="text-align: center">
                            <button type="submit" class="btn btn-sm btn-success"><i class="fa fa-dot-circle-o"></i>新增付款</button>
                        </div>
                    </div>
                </div>
                <div style="text-align: left">
                    <%--<asp:Button ID="Button1" runat="server" Text="新增付款" PostBackUrl="~/PurchasingCenter/PaymentOrder.aspx" />--%>
                </div>
                <br />
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2><i class="fa fa-life-bouy red"></i><strong>请款单汇总</strong></h2>
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
                                    <th>付款编号</th>
                                    <th>付款机构</th>
                                    <th>采购合同号</th>
                                    <th>付款金额</th>
                                    <th>付款时间</th>
                                    <th>付款状态</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1
                                    </td>
                                    <td>FK2021987384743</td>
                                    <td>宁波甬诚</td>
                                    <td>20B001-CG-1</td>
                                    <td>¥8783.98元</td>
                                    <td>2021-03-21</td>
                                    <td>已付款</td>
                                </tr>
                                <tr>
                                    <td>2
                                    </td>
                                    <td>FK2021987384743</td>
                                    <td>宁波甬丁儿</td>
                                    <td>20B001-CG-2</td>
                                    <td>¥4495844.98元</td>
                                    <td>2021-03-21</td>
                                    <td>待付款</td>
                                </tr>
                                <tr>
                                    <td>2
                                    </td>
                                    <td>FK2021987384743</td>
                                    <td>宁波甬诚</td>
                                    <td>20B001-CG-1</td>
                                    <td>¥387485.77元</td>
                                    <td>2021-03-21</td>
                                    <td>待付款</td>
                                    <td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="row">

                        <div class="col-lg-4 col-lg-offset-4 col-sm-5 col-sm-offset-2 recap pull-right">
                            <table class="table table-clear">
                                <tbody>
                                    <tr>
                                        <td class="right"><strong>合同金额</strong></td>
                                        <td class="right">¥888738元</td>
                                    </tr>
                                    <tr>
                                        <td class="right"><strong>已付款金额</strong></td>
                                        <td class="right">¥888738元</td>
                                    </tr>
                                    <tr>
                                        <td class="right"><strong>待付款金额</strong></td>
                                        <td class="right">¥43356元</td>
                                    </tr>
                                    <tr>
                                        <td class="right"><strong>未付款金额</strong></td>
                                        <td class="right">¥33456元</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <!--/col-->

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

