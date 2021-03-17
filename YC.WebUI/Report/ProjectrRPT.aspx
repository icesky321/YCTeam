﻿<%@ Page Title="" Language="C#" MasterPageFile="~/shares/MasterPage.master" AutoEventWireup="true" CodeFile="ProjectrRPT.aspx.cs" Inherits="Report_ProjectrRPT" %>

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
                    <li><i class="fa fa-file-text"></i><a href="#">统计中心</a></li>
                    <li><i class="fa fa-heart-o"></i>项目汇总</li>
                </ol>
            </div>
        </div>
        <div class="row profile">
            <div class="row">
                <div class="col-lg-12">
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
                    <li>项目名称：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" WatermarkText="可模糊查询" TargetControlID="TextBox1" />
                        合同编号：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" WatermarkText="可模糊查询" TargetControlID="TextBox2" />
                        项目经理：<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender3" runat="server" WatermarkText="可模糊查询" TargetControlID="TextBox5" />
                        合同到期月份:               
                        <asp:TextBox ID="TextBox3" runat="server" AutoCompleteType="Disabled"></asp:TextBox><ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" Format="yyyy/MM" TargetControlID="TextBox3" />
                        <asp:Button ID="btFinish" runat="server" CausesValidation="True" Text="搜索" CssClass="btn btn-primary button-finish" />
                    </li>
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
                                                        <th class="center">项目名称</th>
                                                        <th class="center">合同信息</th>
                                                        <th class="center">购货信息</th>
                                                        <th class="center">进项发票信息</th>
                                                        <th class="center">发货信息</th>
                                                        <th class="center">项目负责人</th>
                                                        <th class="center">项目状态</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td class="center">镇海炼化1# 地块乙烯项目(ZHLH-YX-2101)</td>
                                                        <td class="center">
                                                            <table class="table table-hover">
                                                                <thead>
                                                                    <tr>
                                                                        <th class="center">合同编号</th>
                                                                        <th class="center">合同金额</th>
                                                                        <th class="center">合同吨位</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td class="center">2010BC04736273</td>
                                                                        <td class="center">¥8783.98元</td>
                                                                        <td class="center">43.56吨</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="center">20210BC2873663</td>
                                                                        <td class="center">¥4495844.98元</td>
                                                                        <td class="center">43.56吨</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="center">2010BC2903974</td>
                                                                        <td class="center">¥387485.77元</td>
                                                                        <td class="center">43.56吨</td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                            <div class="row">
                                                                <table class="table table-clear">
                                                                    <tbody>
                                                                        <tr>
                                                                            <td class="right"><strong>合同总金额</strong></td>
                                                                            <td class="right">¥888738元</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="right"><strong>合同总吨位</strong></td>
                                                                            <td class="right">243.56吨</td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </td>
                                                        <td class="center">
                                                            <table class="table table-hover">
                                                                <thead>
                                                                    <tr>
                                                                        <th>购货总金额</th>
                                                                        <th>购货吨位</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>¥8783.98元</td>
                                                                        <td>43.56吨</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>¥8783.98元</td>
                                                                        <td>43.56吨</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>¥8783.98元</td>
                                                                        <td>43.56吨</td>
                                                                        <td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                        <td class="center">
                                                            <table class="table table-hover">
                                                                <thead>
                                                                    <tr>
                                                                        <th class="center">发票总金额</th>
                                                                        <th class="center">已开发票金额</th>
                                                                        <th class="center">未开发票金额</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td class="center">¥328783.98元</td>
                                                                        <td class="center">¥823783.98元</td>
                                                                        <td class="center">¥8783.98元</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="center">¥328783.98元</td>
                                                                        <td class="center">¥823783.98元</td>
                                                                        <td class="center">¥8783.98元</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="center">¥328783.98元</td>
                                                                        <td class="center">¥823783.98元</td>
                                                                        <td class="center">¥8783.98元</td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                        <td class="center">
                                                            <table class="table table-hover">
                                                                <thead>
                                                                    <tr>
                                                                        <th>付款编号</th>
                                                                        <th>付款金额</th>
                                                                        <th>付款状态</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>FK2021987384743</td>
                                                                        <td>¥8783.98元</td>
                                                                        <td>已付款</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>FK2021987384743</td>
                                                                        <td>¥4495844.98元</td>
                                                                        <td>待付款</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>FK2021987384743</td>
                                                                        <td>¥387485.77元</td>
                                                                        <td>待付款</td>
                                                                        <td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                        <td class="center">梁经理
                                                        </td>
                                                        <td class="center">待发货
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
                                                    </tr>
                                                    <tr>
                                                        <td class="center">南京雄盛乙炔项目基地(YCDJ-JW-2102)</td>
                                                        <td class="center">
                                                            <table class="table table-hover">
                                                                <thead>
                                                                    <tr>
                                                                        <th class="center">合同编号</th>
                                                                        <th class="center">合同金额</th>
                                                                        <th class="center">合同吨位</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td class="center">2010BC04736273</td>
                                                                        <td class="center">¥8783.98元</td>
                                                                        <td class="center">43.56吨</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="center">20210BC2873663</td>
                                                                        <td class="center">¥4495844.98元</td>
                                                                        <td class="center">43.56吨</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="center">2010BC2903974</td>
                                                                        <td class="center">¥387485.77元</td>
                                                                        <td class="center">43.56吨</td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                            <div class="row">
                                                                <table class="table table-clear">
                                                                    <tbody>
                                                                        <tr>
                                                                            <td class="right"><strong>合同总金额</strong></td>
                                                                            <td class="right">¥888738元</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="right"><strong>合同总吨位</strong></td>
                                                                            <td class="right">243.56吨</td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </td>
                                                        <td class="center">
                                                            <table class="table table-hover">
                                                                <thead>
                                                                    <tr>
                                                                        <th>送货部门</th>
                                                                        <th>送货日期</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>综合服务部</td>
                                                                        <td>2021-6-22</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>物资管理部</td>
                                                                        <td>2021--7-23</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>物资管理部</td>
                                                                        <td>2021--7-23</td>
                                                                        <td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                        <td class="center">
                                                            <table class="table table-hover">
                                                                <thead>
                                                                    <tr>
                                                                        <th class="center">供应商</th>
                                                                        <th class="center">合同编号</th>
                                                                        <th class="center">合同金额</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td class="center">山东钢铁厂</td>
                                                                        <td class="center">2010BC04736273</td>
                                                                        <td class="center">¥8783.98元</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="center">日照钢铁厂</td>
                                                                        <td class="center">20210BC2873663</td>
                                                                        <td class="center">¥4495844.98元</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="center">吉林钢铁厂</td>
                                                                        <td class="center">2010BC2903974</td>
                                                                        <td class="center">¥387485.77元</td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                        <td class="center">
                                                            <table class="table table-hover">
                                                                <thead>
                                                                    <tr>
                                                                        <th>付款编号</th>
                                                                        <th>付款金额</th>
                                                                        <th>付款状态</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>FK2021987384743</td>
                                                                        <td>¥8783.98元</td>
                                                                        <td>已付款</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>FK2021987384743</td>
                                                                        <td>¥4495844.98元</td>
                                                                        <td>待付款</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>FK2021987384743</td>
                                                                        <td>¥387485.77元</td>
                                                                        <td>待付款</td>
                                                                        <td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                        <td class="center">叶经理
                                                        </td>
                                                        <td class="center">待发货</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--/col-->


                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>

