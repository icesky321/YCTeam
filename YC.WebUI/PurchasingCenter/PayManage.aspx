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
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2><i class="fa fa-indent red"></i><strong>采购付款申请单</strong></h2>
                    </div>
                    <div class="panel-body">
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
                                        <input type="text" class="form-control">
                                    </div>
                                    <label class="col-lg-2 col-md-2 col-sm-12 control-label">账号</label>
                                    <div class="col-lg-4 col-md-4">
                                        <input type="text" class="form-control">
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
                                    <td>¥8783.98元</td>
                                    <td>2021-03-21</td>
                                    <td>已付款</td>
                                </tr>
                                <tr>
                                    <td>2
                                    </td>
                                    <td>FK2021987384743</td>
                                    <td>宁波甬丁儿</td>
                                    <td>¥4495844.98元</td>
                                    <td>2021-03-21</td>
                                    <td>待付款</td>
                                </tr>
                                <tr>
                                    <td>2
                                    </td>
                                    <td>FK2021987384743</td>
                                    <td>宁波甬诚</td>
                                    <td>¥387485.77元</td>
                                    <td>2021-03-21</td>
                                    <td>待付款</td>
                                    <td>
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

