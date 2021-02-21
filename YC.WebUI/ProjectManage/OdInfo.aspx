<%@ Page Title="" Language="C#" MasterPageFile="~/shares/MasterPage.master" AutoEventWireup="true" CodeFile="OdInfo.aspx.cs" Inherits="ProjectManage_OdInfo" %>

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

            <div class="col-md-5">

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
                                    <asp:Label ID="lbProName" runat="server" Text=""></asp:Label></strong></h4>
                            </li>
                            <li>
                                <div>
                                    <h5><i class="fa fa-building-o"></i>项目编号</h5>
                                </div>
                                <h4><strong>
                                    <asp:Label ID="lbProNum" runat="server" Text=""></asp:Label></strong></h4>
                            </li>
                        </ul>

                        <hr>

                        <ul class="profile-details">
                            <li>
                                <div>
                                    <h5><i class="fa fa-phone"></i>项目状态</h5>
                                </div>
                                <h4><strong>
                                    <asp:Label ID="lbStatus" runat="server" Text=""></asp:Label></strong></h4>
                            </li>
                        </ul>
                        <hr>
                        <ul class="profile-details">
                            <li>
                                <div>
                                    <h5><i class="fa fa-thumbs-up"></i>订单名称</h5>
                                </div>
                                <h4><strong>
                                    <asp:Label ID="lbSubProName" runat="server" Text=""></asp:Label></strong></h4>
                            </li>
                            <li>
                                <div>
                                    <h5><i class="fa fa-building-o"></i>订单编号</h5>
                                </div>
                                <h4><strong>
                                    <asp:Label ID="lbSubProNum" runat="server" Text=""></asp:Label></strong></h4>
                            </li>
                            <li>
                                <div>
                                    <h5><i class="fa fa-building-o"></i>订单金额</h5>
                                </div>
                                <h4><strong>
                                    <asp:Label ID="lbSubAmount" runat="server" Text=""></asp:Label></strong></h4>
                            </li>
                            <li>
                                <div>
                                    <h5><i class="fa fa-building-o"></i>采购商</h5>
                                </div>
                                <h4><strong>
                                    <asp:Label ID="lbSubPurchaser" runat="server" Text=""></asp:Label></strong></h4>
                            </li>
                        </ul>
                    </div>

                </div>

            </div>
            <!--/.col-->

            <div class="col-md-7">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2><i class="fa fa-heart-o red"></i><strong>订单详情</strong></h2>
                    </div>
                    <div class="panel-body">
                        <asp:Repeater ID="rptodInfo" runat="server">
                            <HeaderTemplate>
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th><%# Container.ItemIndex %>
                                            </th>
                                            <th>收货单位</th>
                                            <th>收货地址</th>
                                            <th>到货时间</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td>1
                                    </td>
                                    <td><%# Eval("RcvDpt") %></td>
                                    <td><%# Eval("RcvAddr") %></td>
                                    <td><%# Eval("RcvDate") %></td>
                                    <td>
                                        <a title="物料详情" class="btn btn-success" href='<%# "OdInfo.aspx?id=" + Eval("ProjectId").ToString() + "&Subid=" + Eval("SubProId").ToString() %>'>
                                            <i class="fa fa-search-plus "></i>
                                        </a>
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </tbody>
                        </table>
                            </FooterTemplate>
                        </asp:Repeater>


                    </div>
                </div>

            </div>
            <!--/.col-->

        </div>
        <!--/.row profile-->
    </div>
    <!-- end: Content -->
</asp:Content>

