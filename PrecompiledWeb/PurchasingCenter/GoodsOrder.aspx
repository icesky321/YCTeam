<%@ page title="" language="C#" masterpagefile="~/shares/MasterPage.master" autoeventwireup="true" inherits="PurchasingCenter_GoodsOrder, App_Web_orgjpqpt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- start: Content -->
    <div class="main ">

        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-heart-o"></i>采购中心</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="index.html">首页</a></li>
                    <li><i class="fa fa-file-text"></i><a href="#">采购中心</a></li>
                    <li><i class="fa fa-heart-o"></i>装货明细</li>
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
                            装货信息：
                        </div>
                        <div class="panel-body">
                            <p><strong>购货单位:</strong><asp:TextBox ID="TextBox1" runat="server">宁波甬诚</asp:TextBox></p>
                            <p><strong>供货单位:</strong><asp:TextBox ID="TextBox2" runat="server">泰安市圣地工贸有限公司</asp:TextBox></p>
                            <p>出发地:</><asp:TextBox ID="TextBox11" runat="server"></asp:TextBox></p>
                            <p>目的地:</><asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></p>
                            <p>车号:</><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></p>
                            <p>司机:</><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></p>
                            <p>联系方式:</><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></p>
                            <p>备注:</><asp:TextBox ID="TextBox14" runat="server" TextMode="MultiLine"></asp:TextBox></p>
                            <p>目的地:</><asp:TextBox ID="TextBox15" runat="server" Text=""></asp:TextBox></p>
                            <p>运输目的地：<asp:RadioButton ID="RadioButton1" runat="server" Text="中转" ValidationGroup="1" /><asp:RadioButton ID="RadioButton2" runat="server" Text="直达" ValidationGroup="1" /></p>
                            <%--                            质保书附件：<asp:FileUpload ID="FileUpload1" runat="server" />--%>
                            <p>
                                <asp:Button ID="Button1" runat="server" Text="确认" />
                            </p>
                        </div>
                    </div>
                </div>
                <!--/col-->
                <table class="table table-striped table-responsive">
                    <thead>
                        <tr>
                            <td class="center">
                                <asp:CheckBox ID="CheckBox6" runat="server" /></td>
                            <th class="center">#</th>
                            <th>物料名称</th>
                            <th>物料编码</th>
                            <th class="center">规格型号</th>
                            <th class="center">产地</th>
                            <th class="center">供货数量</th>
                            <th class="center">状态</th>
                            <th class="center">供货单价</th>
                            <th class="center">合计单价</th>
                            <th class="center">合计总价价</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="center">
                                <asp:CheckBox ID="CheckBox1" runat="server" /></td>
                            <td class="center">1</td>
                            <td class="center">低温板</td>
                            <td class="center">CHHNABZTA _150X75X5X7</td>
                            <td class="center">HN150X75X5X7/Q235B</td>
                            <td class="center">沙钢</td>
                            <td class="center">
                                <asp:TextBox ID="TextBox6" runat="server">543</asp:TextBox><asp:HyperLink ID="HyperLink6" runat="server">更新</asp:HyperLink></td>
                            <th class="center">待入库</th>
                            <td class="center">345</td>
                            <td class="center">345</td>
                            <td class="center">5676</td>
                            <td class="center">12000</td>
                        </tr>
                        <tr>
                            <td class="center">
                                <asp:CheckBox ID="CheckBox2" runat="server" /></td>
                            <td class="center">2</td>
                            <td class="center">低温板</td>
                            <td class="center">CHHNABZTA _150X75X5X7</td>
                            <td class="center">HN150X75X5X7/Q235B</td>
                            <td class="center">沙钢</td>
                            <td class="center">
                                <asp:TextBox ID="TextBox7" runat="server">543</asp:TextBox><asp:HyperLink ID="HyperLink1" runat="server">更新</asp:HyperLink></td>
                            <th class="center">待入库</th>
                            <td class="center">345</td>
                            <td class="center">345</td>
                            <td class="center">5676</td>
                            <td class="center">12000</td>
                        </tr>
                        <tr>
                            <td class="center">
                                <asp:CheckBox ID="CheckBox3" runat="server" /></td>
                            <td class="center">3</td>
                            <td class="center">低温板</td>
                            <td class="center">CHHNABZTA _200X100X5.5X8</td>
                            <td class="center">HN150X75X5X7/Q235B</td>
                            <td class="center">沙钢</td>
                            <td class="center">
                                <asp:TextBox ID="TextBox8" runat="server">543</asp:TextBox><asp:HyperLink ID="HyperLink2" runat="server">更新</asp:HyperLink></td>
                            <th class="center">待入库</th>
                            <td class="center">345</td>
                            <td class="center">345</td>
                            <td class="center">5676</td>
                            <td class="center">12000</td>
                        </tr>
                        <tr>
                            <td class="center">
                                <asp:CheckBox ID="CheckBox4" runat="server" /></td>
                            <td class="center">4</td>
                            <td class="center">低温板</td>
                            <td class="center">CHHNABZTA _175X175X7.5X11</td>
                            <td class="center">HN150X75X5X7/Q235B</td>
                            <td class="center">鞍钢</td>
                            <td class="center">
                                <asp:TextBox ID="TextBox9" runat="server">543</asp:TextBox><asp:HyperLink ID="HyperLink3" runat="server">更新</asp:HyperLink></td>
                            <th class="center">待入库</th>
                            <td class="center">345</td>
                            <td class="center">345</td>
                            <td class="center">5676</td>
                            <td class="center">12000</td>
                        </tr>
                        <tr>
                            <td class="center">
                                <asp:CheckBox ID="CheckBox5" runat="server" /></td>
                            <td class="center">5</td>
                            <td class="center">低温板</td>
                            <td class="center">VMSD202Z_8X1800X8500</td>
                            <td class="center">HN150X75X5X7/Q235B</td>
                            <td class="center">鞍钢</td>
                            <td class="center">
                                <asp:TextBox ID="TextBox10" runat="server">543</asp:TextBox><asp:HyperLink ID="HyperLink4" runat="server">更新</asp:HyperLink></td>
                            <th class="center">待入库</th>
                            <td class="center">345</td>
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
                <!--/row-->
            </div>
            <!--/row-->
        </div>
    </div>
</asp:Content>

