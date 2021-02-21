<%@ Page Title="项目列表" Language="C#" MasterPageFile="~/shares/MasterPage.master" AutoEventWireup="true" CodeFile="ProjectList.aspx.cs" Inherits="ProjectManage_ProjectList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- start: Content -->
    <div class="main sidebar-minified">

        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-laptop"></i>项目列表</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
                    <li><i class="fa fa-cogs"></i><a href="UserList.aspx">项目管理</a></li>
                    <li><i class="fa  fa-group"></i>项目列表</li>
                </ol>
            </div>
        </div>

        <div class="row">

            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2><i class="fa fa-table red"></i><span class="break"></span><strong>项目列表</strong></h2>
                        <div class="panel-actions">
                            <a href="table.html#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                            <a href="table.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                            <a href="table.html#" class="btn-close"><i class="fa fa-times"></i></a>
                        </div>
                    </div>

                    <div class="panel-body">

                        <div class=" btn-toolbar ">
                            <a href="NewProjectInfo.aspx" class="btn btn-default">创建新新项目</a>
                        </div>

                        <asp:Repeater ID="rptProject" runat="server">
                            <HeaderTemplate>
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th><%# Container.ItemIndex %>
                                            </th>
                                            <th>项目编号</th>
                                            <th>项目名称</th>
                                            <th>子项目编号</th>
                                            <th>子项目名称</th>
                                            <th>子项目总金额</th>
                                            <th>采购商</th>
                                            <th>申请日期</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td>1
                                    </td>
                                    <td><%# Eval("ProjectNum") %></td>
                                    <td><%# Eval("ProjectName") %></td>
                                    <td><%# Eval("SubProNum") %></td>
                                    <td><%# Eval("SubProName") %></td>
                                    <td><%# Eval("SubAmount") %></td>
                                    <td><%# Eval("SubPurchaser") %></td>
                                    <td><%# Eval("ApplicantDate") %></td>
                                    <td><a title="新增采购单" class="btn btn-success" href='<%# "NewMaterialOrder.aspx?id=" + Eval("ProjectId").ToString() + "&Subid=" + Eval("SubProId").ToString() %>'>
                                        <i class="fa fa-list"></i>
                                    </a>
                                        <a title="追加订单" class="btn btn-info" href='<%# "NewSubProjectInfo.aspx?id=" + Eval("ProjectId").ToString() + "&mode=Edit" %>'>
                                            <i class="fa fa-edit "></i>
                                        </a>
                                        <a title="查看详情" class="btn btn-success" href='<%# "OdInfo.aspx?id=" + Eval("ProjectId").ToString() + "&Subid=" + Eval("SubProId").ToString() %>'>
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
            <!--/col-->

        </div>
        <!--/row-->




    </div>
    <!-- end: Content -->




    <!-- inline scripts related to this page -->
    <script src="assets/js/pages/form-elements.js"></script>
</asp:Content>

