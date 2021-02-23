<%@ Page Title="" Language="C#" MasterPageFile="~/shares/MasterPage.master" AutoEventWireup="true" CodeFile="ProDetail.aspx.cs" Inherits="PurchasingCenter_ProDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- start: Content -->
    <div class="main ">

        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-heart-o"></i>项目明细</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="index.html">主页</a></li>
                    <li><i class="fa fa-file-text"></i><a href="#">采购中西</a></li>
                    <li><i class="fa fa-heart-o"></i>项目明细</li>
                </ol>
            </div>
        </div>

        <div class="row profile">

            <div class="col-md-4">

                <div class="panel panel-default">
                    <div class="panel-body">

                        <h3 class="text-center"><strong>镇海炼化1号地块乙烯项目</strong></h3>
                        <h4 class="text-center"><strong>ZHLH-YX-21001</strong></h4>
                        <h4 class="text-center"><small><i class="fa fa-map-marker"></i>项目名称</small></h4>

                        <hr>

                        <div class="row text-center">
                            <div class="col-xs-6">
                                <div><strong>3条</strong></div>
                                <div><small>订单总数</small></div>
                            </div>
                            <!--/.col-->
                            <div class="col-xs-6">
                                <div><strong>12条</strong></div>
                                <div><small>采购物流总数</small></div>
                            </div>
                        </div>
                        <!--/.row-->

                        <hr>
                        <ul class="profile-details">
                            <li>
                                <div>
                                    <h5><i class="fa fa-building-o"></i>订单金额</h5>
                                </div>
                                <h4><strong>
                                    <asp:Label ID="lbAmount" runat="server" Text="¥80000元"></asp:Label></strong></h4>
                            </li>
                            <li>
                                <div>
                                    <h5><i class="fa fa-building-o"></i>采购商</h5>
                                </div>
                                <h4><strong>
                                    <asp:Label ID="lbPurchaser" runat="server" Text="镇海炼化公司"></asp:Label></strong></h4>
                            </li>
                            <li>
                                <div>
                                    <h5><i class="fa fa-building-o"></i>订单状态</h5>
                                </div>
                                <h4><strong>
                                    <asp:Label ID="Label1" runat="server" Text="待询价"></asp:Label></strong></h4>
                            </li>
                        </ul>
                    </div>

                </div>

            </div>
            <!--/.col-->

            <div class="col-md-8">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2><i class="fa fa-heart-o red"></i><strong>待询价物料明细</strong></h2>
                    </div>
                    <div class="panel-body">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h2><i class="fa fa-table red"></i><span class="break"></span><strong>物料明细汇总</strong></h2>
                                    <div class="panel-actions">
                                        <a href="table.html#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                                        <a href="table.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                                        <a href="table.html#" class="btn-close"><i class="fa fa-times"></i></a>
                                    </div>
                                </div>

                                <div class="panel-body">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>#
                                                </th>
                                                <th>物料名称</th>
                                                <th>规格型号</th>
                                                <th>物料单位</th>
                                                <th>物料数量</th>
                                                <th>备注</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1
                                                </td>
                                                <td>流体碳素无缝钢管</td>
                                                <td>Φ168.3×6.3 20# GB/T 8163</td>
                                                <td>千克</td>
                                                <td>629.1500</td>
                                                <td>"822米</td>
                                            </tr>
                                            <tr>
                                                <td>2
                                                </td>
                                                <td>流体碳素无缝钢管</td>
                                                <td>Φ168.3×6.3 20# GB/T 8163</td>
                                                <td>千克</td>
                                                <td>629.1500</td>
                                                <td>"822米</td>
                                            </tr>
                                            <tr>
                                                <td>3
                                                </td>
                                                <td>流体碳素无缝钢管</td>
                                                <td>Φ168.3×6.3 20# GB/T 8163</td>
                                                <td>千克</td>
                                                <td>629.1500</td>
                                                <td>"822米</td>
                                            </tr>
                                            <tr>
                                                <td>4
                                                </td>
                                                <td>流体碳素无缝钢管</td>
                                                <td>Φ168.3×6.3 20# GB/T 8163</td>
                                                <td>千克</td>
                                                <td>629.1500</td>
                                                <td>"822米</td>
                                            </tr>
                                            <tr>
                                                <td>5
                                                </td>
                                                <td>流体碳素无缝钢管</td>
                                                <td>Φ168.3×6.3 20# GB/T 8163</td>
                                                <td>千克</td>
                                                <td>629.1500</td>
                                                <td>"822米</td>
                                            </tr>
                                            <tr>
                                                <td>6
                                                </td>
                                                <td>流体碳素无缝钢管</td>
                                                <td>Φ168.3×6.3 20# GB/T 8163</td>
                                                <td>千克</td>
                                                <td>629.1500</td>
                                                <td>"822米</td>
                                            </tr>
                                            <tr>
                                                <td>4
                                                </td>
                                                <td>流体碳素无缝钢管</td>
                                                <td>Φ168.3×6.3 20# GB/T 8163</td>
                                                <td>千克</td>
                                                <td>629.1500</td>
                                                <td>"822米</td>
                                            </tr>
                                            <tr>
                                                <td>7
                                                </td>
                                                <td>流体碳素无缝钢管</td>
                                                <td>Φ168.3×6.3 20# GB/T 8163</td>
                                                <td>千克</td>
                                                <td>629.1500</td>
                                                <td>"822米</td>
                                            </tr>
                                            <tr>
                                                <td>8
                                                </td>
                                                <td>流体碳素无缝钢管</td>
                                                <td>Φ168.3×6.3 20# GB/T 8163</td>
                                                <td>千克</td>
                                                <td>629.1500</td>
                                                <td>"822米</td>
                                            </tr>
                                            <tr>
                                                <td>9
                                                </td>
                                                <td>流体碳素无缝钢管</td>
                                                <td>Φ168.3×6.3 20# GB/T 8163</td>
                                                <td>千克</td>
                                                <td>629.1500</td>
                                                <td>"822米</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div style="text-align:right;">
                            <asp:Button ID="Button1" runat="server" Text="导出到Excel" />
                        </div>
                    </div>

                </div>

            </div>
            <!--/.col-->

        </div>
        <!--/.row profile-->
    </div>
    <!-- end: Content -->
    <br>
    <br>
    <br>
</asp:Content>

