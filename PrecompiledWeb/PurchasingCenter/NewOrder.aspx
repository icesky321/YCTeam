<%@ page title="" language="C#" masterpagefile="~/shares/MasterPage.master" autoeventwireup="true" inherits="PurchasingCenter_NewOrder, App_Web_orgjpqpt" %>

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
                                    <p><strong>盛虹炼化一体化项目</strong></p>
                                    <p>项目编号：20B001</p>
                                    <p>订单金额：¥80000元</p>
                                    <p>采购商：盛虹炼化</p>
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
                                    <p><strong>请购单号：20B001-1</strong></p>
                                    <p><strong>送货部门：SH5材料采购组</strong></p>

                                    <p>交货地点：徐圩新区炼化项目现场</p>
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
                                    <p>合同编号：<asp:TextBox ID="TextBox2" runat="server">20B001-CG-</asp:TextBox></p>
                                    <p>
                                        备注：<asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    </p>
                                    <%--<button type="button" class="btn btn-danger btn-xs">导入询价单</button>--%>
                                </div>
                            </div>
                        </div>
                        <!--/col-->

                    </div>
                    <!--/row-->

                    <div class="panel panel-default">
                        <div class="panel-body">
                            <!--/col-->
                            <table class="table table-striped table-responsive">
                                <thead>
                                    <tr>
                                        <th class="center">#</th>
                                        <th>物料名称</th>
                                        <th>物料编码</th>
                                        <th class="center">规格型号</th>
                                        <th class="center">产地</th>
                                        <th class="center">供货数量</th>
                                        <th class="center">供货单价</th>
                                        <th class="center">合计单价</th>
                                        <th class="center">合计总价价</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="center">1</td>
                                        <td class="center">低温板</td>
                                        <td class="center">CHHNABZTA _150X75X5X7</td>
                                        <td class="center">HN150X75X5X7/Q235B</td>
                                        <td class="center">沙钢</td>
                                        <td class="center">
                                            <asp:TextBox ID="TextBox3" runat="server">543</asp:TextBox>
                                            <%--<asp:HyperLink ID="HyperLink6" runat="server">更新</asp:HyperLink>

                                             <div class="dropdown pull-right">
                                                <a class="fa fa-comments" data-toggle="dropdown" href="widgets.html#"></a>
                                                <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                                                    <li><a href="widgets.html#">变更时间       价格</a></li>
                                                    <li><a href="widgets.html#"><i style="text-align: left">2021-1-3</i>       <i style="text-align: right"></i>345</a></li>
                                                    <li><a href="widgets.html#">2021-1-6       347</a></li>
                                                    <li><a href="widgets.html#">2021-1-9       344</a></li>
                                                    <li><a href="widgets.html#">2021-2-3       355</a></li>
                                                </ul>
                                            </div>--%>
                                        </td>
                                        <td class="center">
                                            <asp:TextBox ID="TextBox9" runat="server">543</asp:TextBox></td>
                                        <td class="center">345</td>
                                        <td class="center">5676</td>
                                        <td class="center">12000</td>
                                    </tr>
                                    <tr>
                                        <td class="center">2</td>
                                        <td class="center">低温板</td>
                                        <td class="center">CHHNABZTA _150X75X5X7</td>
                                        <td class="center">HN150X75X5X7/Q235B</td>
                                        <td class="center">沙钢</td>
                                        <td class="center">
                                            <asp:TextBox ID="TextBox4" runat="server">543</asp:TextBox></td>
                                        <td class="center">
                                            <asp:TextBox ID="TextBox10" runat="server">543</asp:TextBox></td>
                                        <td class="center">345</td>
                                        <td class="center">5676</td>
                                        <td class="center">12000</td>
                                    </tr>
                                    <tr>
                                        <td class="center">3</td>
                                        <td class="center">低温板</td>
                                        <td class="center">CHHNABZTA _200X100X5.5X8</td>
                                        <td class="center">HN150X75X5X7/Q235B</td>
                                        <td class="center">沙钢</td>
                                        <td class="center">
                                            <asp:TextBox ID="TextBox5" runat="server">543</asp:TextBox></td>
                                        <td class="center">
                                            <asp:TextBox ID="TextBox11" runat="server">543</asp:TextBox></td>
                                        <td class="center">345</td>
                                        <td class="center">5676</td>
                                        <td class="center">12000</td>
                                    </tr>
                                    <tr>
                                        <td class="center">4</td>
                                        <td class="center">低温板</td>
                                        <td class="center">CHHNABZTA _175X175X7.5X11</td>
                                        <td class="center">HN150X75X5X7/Q235B</td>
                                        <td class="center">鞍钢</td>
                                        <td class="center">
                                            <asp:TextBox ID="TextBox6" runat="server">543</asp:TextBox></td>
                                        <td class="center">
                                            <asp:TextBox ID="TextBox12" runat="server">543</asp:TextBox></td>
                                        <td class="center">345</td>
                                        <td class="center">5676</td>
                                        <td class="center">12000</td>
                                    </tr>
                                    <tr>
                                        <td class="center">5</td>
                                        <td class="center">低温板</td>
                                        <td class="center">VMSD202Z_8X1800X8500</td>
                                        <td class="center">HN150X75X5X7/Q235B</td>
                                        <td class="center">鞍钢</td>
                                        <td class="center">
                                            <asp:TextBox ID="TextBox7" runat="server">543</asp:TextBox></td>
                                        <td class="center">
                                            <asp:TextBox ID="TextBox13" runat="server">543</asp:TextBox></td>
                                        <td class="center">345</td>
                                        <td class="center">5676</td>
                                        <td class="center">12000</td>
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
                            <button type="button" class="btn btn-success btn-lg btn-block">添加</button>
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

