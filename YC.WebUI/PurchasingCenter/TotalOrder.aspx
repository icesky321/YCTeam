<%@ Page Title="" Language="C#" MasterPageFile="~/shares/MasterPage.master" AutoEventWireup="true" CodeFile="TotalOrder.aspx.cs" Inherits="PurchasingCenter_TotalOrder" %>

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
                                            <th>项目状态</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>ZHLH-YX-2101</td>
                                            <td>镇海炼化1# 地块乙烯项目</td>
                                            <td>镇海炼化</td>
                                            <td>¥60000元</td>
                                            <td>待询价</td>
                                            <td>
                                                <a class="btn btn-success" href="ProDetail.aspx">
                                                    <i class="fa fa-search-plus "></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>YCDJ-JW-2102</td>
                                            <td>南京雄盛乙炔项目基地</td>
                                            <td>南京雄盛</td>
                                            <td>¥80000元</td>
                                            <td>已询价</td>
                                            <td>
                                                <a class="btn btn-success" href="table.html#">
                                                    <i class="fa fa-search-plus "></i>
                                                </a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!--/col-->

                </div>

            </div>
            <!--/col-->

        </div>
        <!--/row-->
    </div>

</asp:Content>

