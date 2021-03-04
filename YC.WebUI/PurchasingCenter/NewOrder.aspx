<%@ Page Title="" Language="C#" MasterPageFile="~/shares/MasterPage.master" AutoEventWireup="true" CodeFile="NewOrder.aspx.cs" Inherits="PurchasingCenter_NewOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid content">

        <div class="row">

            <!-- start: Content -->
            <div class="main ">

                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-credit-card"></i>创建订单</h3>
                        <ol class="breadcrumb">
                            <li><i class="fa fa-home"></i><a href="index.html">主页</a></li>
                            <li><i class="fa fa-file-text"></i><a href="#">采购中心</a></li>
                            <li><i class="fa fa-credit-card"></i>创建订单</li>
                        </ol>
                    </div>
                </div>

                <div class="invoice">

                    <div class="row header">

                        <div class="col-sm-4">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    项目信息：
                                </div>
                                <div class="panel-body">
                                    <p><strong>镇海炼化1号地块乙烯项目</strong></p>
                                    <p>项目编号：ZHLH-YX-21001</p>
                                    <p>订单金额：¥80000元</p>
                                    <p>采购商：镇海炼化公司</p>
                                    <p>项目状态：待询价</p>
                                </div>
                            </div>
                        </div>
                        <!--/col-->
                        <div class="col-sm-4">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    请购单信息
                                </div>
                                <div class="panel-body">
                                    <p><strong>请购单号：57401-20-1277-CV-R-M-1001</strong></p>
                                    <p><strong>送货部门：物资采购部</strong></p>

                                    <p>交货地点：宁波和义大道</p>
                                    <p>
                                        交货时间：2021-07-23
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    供货商信息：
                                </div>
                                <div class="panel-body">
                                    <p><strong>供货商名:</strong><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></p>
                                    <p>合同编号：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></p>
                                    <p>
                                        <asp:Button ID="Button1" runat="server" Text="导入货物价格明细" />
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!--/col-->

                    </div>
                    <!--/row-->

                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">

                                    <table class="table table-clear">
                                        <tbody>
                                            <tr>
                                                <td class="left"><strong>供货商：</strong></td>
                                                <td class="left">唐山盛材钢铁厂</td>
                                            </tr>
                                            <tr>
                                                <td class="left"><strong>合同编号：</strong></td>
                                                <td class="left">57401-20-1277-CV-R-M-1001</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!--/col-->
                            <table class="table table-striped table-responsive">
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
                                        <td class="right">2772</td>
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
                                        <td class="right">342</td>
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
                                        <td class="right">543</td>
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
                                        <td class="right">1234</td>
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
                                        <td class="right">4445</td>
                                        <td class="right">345</td>
                                        <td class="right">5676</td>
                                        <td class="right">12000</td>
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

                </div>
                <!--/invoice-->

            </div>
            <!-- end: Content -->
            <br>
            <br>
            <br>


            <div id="usage">
                <ul>
                    <li>
                        <div class="title">Memory</div>
                        <div class="bar">
                            <div class="progress">
                                <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%"></div>
                            </div>
                        </div>
                        <div class="desc">4GB of 8GB</div>
                    </li>
                    <li>
                        <div class="title">HDD</div>
                        <div class="bar">
                            <div class="progress">
                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%"></div>
                            </div>
                        </div>
                        <div class="desc">250GB of 1TB</div>
                    </li>
                    <li>
                        <div class="title">SSD</div>
                        <div class="bar">
                            <div class="progress">
                                <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%"></div>
                            </div>
                        </div>
                        <div class="desc">700GB of 1TB</div>
                    </li>
                    <li>
                        <div class="title">Bandwidth</div>
                        <div class="bar">
                            <div class="progress">
                                <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%"></div>
                            </div>
                        </div>
                        <div class="desc">90TB of 100TB</div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!--/container-->
</asp:Content>

