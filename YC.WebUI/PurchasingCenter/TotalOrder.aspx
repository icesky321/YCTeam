﻿<%@ Page Title="" Language="C#" MasterPageFile="~/shares/MasterPage.master" AutoEventWireup="true" CodeFile="TotalOrder.aspx.cs" Inherits="PurchasingCenter_TotalOrder" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main sidebar-minified">

        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-table"></i>项目列表</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="index.html">主页</a></li>
                    <li><i class="fa fa-table"></i>项目列表</li>
                </ol>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-2 col-sm-6 col-xs-6 col-xxs-12">
                <div class="smallstat red-bg">
                    <i class="fa fa-bell white-bg"></i>
                    <span class="value black">34项</span>
                    <h3>项目总数</h3>
                </div>
                <!--/.smallstat-->
            </div>
            <!--/.col-->

            <div class="col-lg-2 col-sm-6 col-xs-6 col-xxs-12">
                <div class="smallstat magenta-bg">
                    <i class="fa fa-cogs white-bg"></i>
                    <span class="value black">25项</span>
                    <h3>待询价</h3>
                </div>
                <!--/.smallstat-->
            </div>
            <!--/.col-->

            <div class="col-lg-2 col-sm-6 col-xs-6 col-xxs-12">
                <div class="smallstat blue-bg">
                    <i class="fa fa-laptop white-bg"></i>
                    <span class="value black">13项</span>
                    <h3>待发货</h3>
                </div>
                <!--/.smallstat-->
            </div>
            <!--/.col-->

            <div class="col-lg-2 col-sm-6 col-xs-6 col-xxs-12">
                <div class="smallstat green-bg">
                    <i class="fa fa-moon-o white-bg"></i>
                    <span class="value black">25项</span>
                    <h3>待开票</h3>
                </div>
                <!--/.smallstat-->
            </div>
            <div class="col-lg-2 col-sm-6 col-xs-6 col-xxs-12">
                <div class="smallstat yellow-bg">
                    <i class="fa fa-puzzle-piece white-bg"></i>
                    <span class="value black">25项</span>
                    <h3>待送货</h3>
                </div>
                <!--/.smallstat-->
            </div>
            <div class="col-lg-2 col-sm-6 col-xs-6 col-xxs-12">
                <div class="smallstat brown-bg">
                    <i class="fa fa-flag white-bg"></i>
                    <span class="value black">25项</span>
                    <h3>待结算</h3>
                </div>
                <!--/.smallstat-->
            </div>
            <!--/.col-->

        </div>
        <div class="row">
            <div class="col-lg-12">
                <%-- <ol class="breadcrumb">--%>
                <li>项目名称：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>（可模糊查询）
                    合同编号：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>（可模糊查询）
                        创建时间:               
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" Format="yyyy/MM" TargetControlID="TextBox3" />
                    <asp:Button ID="btFinish" runat="server" CausesValidation="True" Text="搜索" CssClass="btn btn-primary button-finish" />
                </li>
            </div>

            <%--</ol>--%>
        </div>
        <!--/.row-->
        <div class="row">
            <div class="col-lg-12">

                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h2><i class="fa fa-table red"></i><span class="break"></span><strong>项目信息</strong></h2>
                                <div class="panel-actions">
                                    <a href="table.html#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                                    <a href="table.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                                    <a href="table.html#" class="btn-close"><i class="fa fa-times"></i></a>
                                </div>
                            </div>
                            <div class="panel-body">
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
                                            <td>21B001</td>
                                            <td>盛虹炼化一体化项目</td>
                                            <td>盛虹炼化</td>
                                            <td>¥600000元                                      
                                            </td>
                                            <td>梁经理</td>
                                            <td>2021-02-10</td>
                                            <td>待询价</td>
                                            <td>
                                                <a class="btn btn-success" href="ProDetail.aspx">详情
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>21C001</td>
                                            <td>南京雄盛乙炔项目基地</td>
                                            <td>南京雄盛</td>
                                            <td>¥80000元</td>
                                            <td>邵经理</td>
                                            <td>2021-03-10</td>
                                            <td>待发货</td>
                                            <td>
                                                <a class="btn btn-success" href="table.html#">详情
                                                </a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!--/col-->
                    <%--<div class="col-lg-8">
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
                                            <th>送货部门</th>
                                            <th>送货地址</th>
                                            <th>送货日期</th>
                                            <th></th>
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
                                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PurchasingCenter/NewOrder.aspx">请购询价</asp:HyperLink></td>
                                            <td>
                                                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/PurchasingCenter/GoodsOrderManage.aspx">供货商信息</asp:HyperLink></td>

                                        </tr>
                                        <tr>

                                            <td>2
                                            </td>
                                            <td>物资管理部</td>
                                            <td>来福士广场</td>
                                            <td>2021--7-23</td>
                                            <td>
                                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/PurchasingCenter/NewOrder.aspx">请购询价</asp:HyperLink></td>
                                            <td>
                                                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/PurchasingCenter/GoodsOrderManage.aspx">供货商信息</asp:HyperLink></td>
                                        </tr>
                                        <tr>

                                            <td>2
                                            </td>
                                            <td>物资管理部</td>
                                            <td>来福士广场</td>
                                            <td>2021--7-23</td>
                                            <td>
                                                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/PurchasingCenter/NewOrder.aspx">请购询价</asp:HyperLink>
                                            <td>
                                                <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/PurchasingCenter/GoodsOrderManage.aspx">供货商信息</asp:HyperLink></td>
                                            <td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>--%>
                </div>
                <%--                <div class="panel panel-default">
                    <div class="panel-body">
                        <table class="table table-striped table-responsive">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th class="center">#</th>
                                    <th>供货商</th>
                                    <th>付款机构</th>
                                    <th class="center">付款编号</th>
                                    <th class="center">合同号</th>
                                    <th class="center">付款金额</th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>
                                        <asp:CheckBox ID="CheckBox3" runat="server" />
                                    </th>
                                    <td class="center">1</td>
                                    <td class="left">唐山盛材钢铁</td>
                                    <td class="left">宁波甬诚</td>
                                    <td class="center">FK(20)-218763784</td>
                                    <td class="center">2020BC239234</td>
                                    <td class="center">￥ 2347870.00元</td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/PurchasingCenter/GoodsOrder.aspx">到货单管理</asp:HyperLink></td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="~/PurchasingCenter/DeliveryBillManage.aspx">到货单管理</asp:HyperLink></td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/PurchasingCenter/InputInvoice.aspx">进项发票管理</asp:HyperLink></td>
                                </tr>
                                <tr>
                                    <th>
                                        <asp:CheckBox ID="CheckBox2" runat="server" />
                                    </th>
                                    <td class="center">2</td>
                                    <td class="left">唐山盛材钢铁</td>
                                    <td class="left">宁波甬诚</td>
                                    <td class="center">FK(20)-218763784</td>
                                    <td class="center">2020BC239234</td>
                                    <td class="center">￥ 2347870.00元</td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/PurchasingCenter/GoodsOrder.aspx">到货单管理</asp:HyperLink></td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/PurchasingCenter/DeliveryBillManage.aspx">到货单管理</asp:HyperLink></td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink18" runat="server" NavigateUrl="~/PurchasingCenter/InputInvoice.aspx">进项发票管理</asp:HyperLink></td>
                                </tr>
                                <tr>
                                    <th>
                                        <asp:CheckBox ID="CheckBox1" runat="server" />
                                    </th>
                                    <td class="center">3</td>
                                    <td class="left">唐山盛材钢铁</td>
                                    <td class="left">宁波甬诚</td>
                                    <td class="center">FK(20)-218763784</td>
                                    <td class="center">2020BC239234</td>
                                    <td class="center">￥ 2347870.00元</td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/PurchasingCenter/GoodsOrder.aspx">到货单管理</asp:HyperLink></td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="~/PurchasingCenter/DeliveryBillManage.aspx">到货单管理</asp:HyperLink></td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink19" runat="server" NavigateUrl="~/PurchasingCenter/InputInvoice.aspx">进项发票管理</asp:HyperLink></td>
                                </tr>
                                <tr>
                                    <th>
                                        <asp:CheckBox ID="CheckBox4" runat="server" />
                                    </th>
                                    <td class="center">4</td>
                                    <td class="left">唐山盛材钢铁</td>
                                    <td class="left">宁波甬诚</td>
                                    <td class="center">FK(20)-218763784</td>
                                    <td class="center">2020BC239234</td>
                                    <td class="center">￥ 2347870.00元</td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/PurchasingCenter/GoodsOrder.aspx">到货单管理</asp:HyperLink></td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink15" runat="server" NavigateUrl="~/PurchasingCenter/DeliveryBillManage.aspx">到货单管理</asp:HyperLink></td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink20" runat="server" NavigateUrl="~/PurchasingCenter/InputInvoice.aspx">进项发票管理</asp:HyperLink></td>
                                </tr>
                                <tr>
                                    <th>
                                        <asp:CheckBox ID="CheckBox5" runat="server" />
                                    </th>
                                    <td class="center">5</td>
                                    <td class="left">唐山盛材钢铁</td>
                                    <td class="left">宁波甬诚</td>
                                    <td class="center">FK(20)-218763784</td>
                                    <td class="center">2020BC239234</td>
                                    <td class="center">￥ 2347870.00元</td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/PurchasingCenter/GoodsOrder.aspx">到货单管理</asp:HyperLink></td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="~/PurchasingCenter/DeliveryBillManage.aspx">到货单管理</asp:HyperLink></td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink21" runat="server" NavigateUrl="~/PurchasingCenter/InputInvoice.aspx">进项发票管理</asp:HyperLink></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>--%>
            </div>
            <!--/col-->


        </div>
    </div>
    <!--/row-->
</asp:Content>

