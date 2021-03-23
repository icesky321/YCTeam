﻿<%@ page title="" language="C#" masterpagefile="~/shares/MasterPage.master" autoeventwireup="true" inherits="StockCenter_GoodsManage, App_Web_w4cicjyz" %>

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
                    <li><i class="fa fa-file-text"></i><a href="#">库存管理</a></li>
                    <li><i class="fa fa-heart-o"></i>库存统计查询</li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <%-- <ol class="breadcrumb">--%>
                <li>物资名称：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>（可模糊查询）
                    合同编号：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>（可模糊查询）
                    仓库名称：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>（可模糊查询）
                       送货月份:               
                        <asp:TextBox ID="TextBox3" runat="server" AutoCompleteType="Disabled"></asp:TextBox><ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" Format="yyyy/MM" TargetControlID="TextBox3" />
                    <asp:Button ID="btFinish" runat="server" CausesValidation="True" Text="搜索" CssClass="btn btn-primary button-finish" />
                </li>
            </div>

            <%--</ol>--%>
        </div>


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
                <table class="table table-striped table-responsive">
                    <thead>
                        <tr>
                            <th class="center">#</th>
                            <th>物料名称</th>
                            <th>物料编码</th>
                            <th class="center">规格型号</th>
                            <th class="center">产地</th>
                            <th class="center">供应商需求数量</th>
                            <th class="center">采购数量</th>
                            <th class="center">已发数量</th>
                            <th class="center">预估余料量</th>
                            <th class="center">已定单价</th>
                            <th class="center">所在仓库</th>
                            <th class="center">送货日期</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="center">1</td>
                            <td class="center">低温板</td>
                            <td class="center">CHHNABZTA _150X75X5X7</td>
                            <td class="center">HN150X75X5X7/Q235B</td>
                            <td class="center">沙钢</td>
                            <td class="center">345吨</td>
                            <td class="center">355吨</td>
                            <td class="center">123吨</td>
                            <td class="center">10吨</td>
                            <td class="center">23.4</td>
                            <td class="center">宁波江北1#仓库</td>
                            <td class="center">2021-5-7</td>
                            <td class="center">
                                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/StockCenter/GoodsDetail.aspx">详情</asp:LinkButton></td>
                        </tr>
                        <tr>
                            <td class="center">2</td>
                            <td class="center">低温板</td>
                            <td class="center">CHHNABZTA _150X75X5X7</td>
                            <td class="center">HN150X75X5X7/Q235B</td>
                            <td class="center">沙钢</td>
                            <td class="center">345吨</td>
                            <td class="center">355吨</td>
                            <td class="center">123吨</td>
                            <td class="center">10吨</td>
                            <td class="center">23.4</td>
                            <td class="center">宁波江北2#仓库</td>
                            <td class="center">2021-7-7</td>
                            <td class="center">
                                <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/StockCenter/GoodsDetail.aspx">详情</asp:LinkButton></td>
                        </tr>
                        <tr>
                            <td class="center">3</td>
                            <td class="center">低温板</td>
                            <td class="center">CHHNABZTA _200X100X5.5X8</td>
                            <td class="center">HN150X75X5X7/Q235B</td>
                            <td class="center">沙钢</td>
                            <td class="center">345吨</td>
                            <td class="center">355吨</td>
                            <td class="center">123吨</td>
                            <td class="center">10吨</td>
                            <td class="center">23.4</td>
                            <td class="center">宁波江北1#仓库</td>
                            <td class="center">2021-5-7</td>
                            <td class="center">
                                <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/StockCenter/GoodsDetail.aspx">详情</asp:LinkButton></td>
                        </tr>
                        <tr>
                            <td class="center">4</td>
                            <td class="center">低温板</td>
                            <td class="center">CHHNABZTA _175X175X7.5X11</td>
                            <td class="center">HN150X75X5X7/Q235B</td>
                            <td class="center">鞍钢</td>
                            <td class="center">345吨</td>
                            <td class="center">355吨</td>
                            <td class="center">123吨</td>
                            <td class="center">10吨</td>
                            <td class="center">23.4</td>
                            <td class="center">宁波江北1#仓库</td>
                            <td class="center">2021-5-7</td>
                            <td class="center">
                                <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/StockCenter/GoodsDetail.aspx">详情</asp:LinkButton></td>
                        </tr>
                        <tr>
                            <td class="center">5</td>
                            <td class="center">低温板</td>
                            <td class="center">VMSD202Z_8X1800X8500</td>
                            <td class="center">HN150X75X5X7/Q235B</td>
                            <td class="center">鞍钢</td>
                            <td class="center">345吨</td>
                            <td class="center">355吨</td>
                            <td class="center">123吨</td>
                            <td class="center">10吨</td>
                            <td class="center">23.4</td>
                            <td class="center">宁波江北1#仓库</td>
                            <td class="center">2021-5-7</td>
                            <td class="center">
                                <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/StockCenter/GoodsDetail.aspx">详情</asp:LinkButton></td>
                        </tr>
                    </tbody>
                </table>
                <div class="row">

                    <div class="col-lg-4 col-lg-offset-4 col-sm-5 col-sm-offset-2 recap pull-right">
                        <table class="table table-clear">
                            <tbody>
                                <tr>
                                    <td class="right"><strong>实际库存量</strong></td>
                                    <td class="right">345吨</td>
                                </tr>
                                 <tr>
                                    <td class="right"><strong>预估余料总量</strong></td>
                                    <td class="right">123吨</td>
                                </tr>
                                <tr>
                                    <td class="right"><strong>实际占用资金</strong></td>
                                    <td class="right">¥888738元</td>
                                </tr>
                                                                <tr>
                                    <td class="right"><strong>预估余料占用资金</strong></td>
                                    <td class="right">¥234533元</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!--/col-->

                </div>
            </div>
        </div>
    </div>
</asp:Content>

