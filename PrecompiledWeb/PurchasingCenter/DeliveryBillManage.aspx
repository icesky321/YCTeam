<%@ page title="" language="C#" masterpagefile="~/shares/MasterPage.master" autoeventwireup="true" inherits="PurchasingCenter_DeliveryBillManage, App_Web_orgjpqpt" %>

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
                    <li><i class="fa fa-file-text"></i><a href="#">采购中心</a></li>
                    <li><i class="fa fa-heart-o"></i>送货单管理</li>
                </ol>
            </div>
        </div>

        <div class="row profile">
            <div class="row">
                <div class="col-lg-12">
                    <%-- <ol class="breadcrumb">--%>
                    <li>物资名称：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" WatermarkText="可模糊查询" TargetControlID="TextBox1" />
                        合同编号：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" WatermarkText="可模糊查询" TargetControlID="TextBox2" />
                        到货车号：<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender3" runat="server" WatermarkText="可模糊查询" TargetControlID="TextBox5" />
                        仓库名称：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><ajaxToolkit:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender4" runat="server" WatermarkText="可模糊查询" TargetControlID="TextBox4" />
                        物料到期月份:               
                        <asp:TextBox ID="TextBox3" runat="server" AutoCompleteType="Disabled"></asp:TextBox><ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" Format="yyyy/MM" TargetControlID="TextBox3" />
                        <asp:Button ID="btFinish" runat="server" CausesValidation="True" Text="搜索" CssClass="btn btn-primary button-finish" />
                    </li>
                </div>

                <%--</ol>--%>
            </div>
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
                            <td>
                                <asp:CheckBox ID="CheckBox1" runat="server" /></td>
                            <th class="center">#</th>
                            <th class="center">采购单编号</th>
                            <th class="center">物料名称</th>
                            <th class="center">送货地址</th>
                            <th class="center">规格型号</th>
                            <th class="center">产地</th>
                            <th class="center">库存数量</th>
                            <th class="center">已定单价</th>
                            <th class="center">所在仓库</th>
                            <th class="center">送货日期</th>
                            <th class="center">物料状态</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <asp:CheckBox ID="CheckBox2" runat="server" /></td>
                            <td class="center">1</td>
                            <td class="center">20B001-1-1</td>
                            <td class="center">低温板</td>
                            <td class="center">徐圩新区炼化项目现场</td>
                            <td class="center">HN150X75X5X7/Q235B</td>
                            <td class="center">沙钢</td>
                            <td class="center">345</td>
                            <td class="center">23.4</td>
                            <td class="center">宁波江北1#仓库</td>
                            <td class="center">2021-5-7</td>
                            <th class="center">已入库</th>
                            <td class="center">
                                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/StockCenter/GoodsDetail.aspx">详情</asp:LinkButton></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:CheckBox ID="CheckBox3" runat="server" /></td>
                            <td class="center">2</td>
                            <td class="center">20B001-1-2</td>
                            <td class="center">低温板</td>
                            <td class="center">徐圩新区炼化项目现场</td>
                            <td class="center">HN150X75X5X7/Q235B</td>
                            <td class="center">沙钢</td>
                            <td class="center">456</td>
                            <td class="center">23.4</td>
                            <td class="center">宁波江北2#仓库</td>
                            <td class="center">2021-7-7</td>
                            <th class="center">已入库</th>
                            <td class="center">
                                <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/StockCenter/GoodsDetail.aspx">详情</asp:LinkButton></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:CheckBox ID="CheckBox4" runat="server" /></td>
                            <td class="center">3</td>
                            <td class="center">20B001-1-1</td>
                            <td class="center">低温板</td>
                            <td class="center">徐圩新区炼化项目现场</td>
                            <td class="center">HN150X75X5X7/Q235B</td>
                            <td class="center">沙钢</td>
                            <td class="center">345</td>
                            <td class="center">23.4</td>
                            <td class="center">宁波江北1#仓库</td>
                            <td class="center">2021-5-7</td>
                            <th class="center">已入库</th>
                            <td class="center">
                                <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/StockCenter/GoodsDetail.aspx">详情</asp:LinkButton></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:CheckBox ID="CheckBox5" runat="server" /></td>
                            <td class="center">4</td>
                            <td class="center">20B001-2-1</td>
                            <td class="center">低温板</td>
                            <td class="center">徐圩新区炼化项目现场</td>
                            <td class="center">HN150X75X5X7/Q235B</td>
                            <td class="center">鞍钢</td>
                            <td class="center">345</td>
                            <td class="center">23.4</td>
                            <td class="center">宁波江北1#仓库</td>
                            <td class="center">2021-5-7</td>
                            <th class="center">已入库</th>
                            <td class="center">
                                <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/StockCenter/GoodsDetail.aspx">详情</asp:LinkButton></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:CheckBox ID="CheckBox6" runat="server" /></td>
                            <td class="center">5</td>
                            <td class="center">20B001-2-2</td>
                            <td class="center">低温板</td>
                            <td class="center">徐圩新区炼化项目现场</td>
                            <td class="center">HN150X75X5X7/Q235B</td>
                            <td class="center">鞍钢</td>
                            <td class="center">345</td>
                            <td class="center">23.4</td>
                            <td class="center">宁波江北1#仓库</td>
                            <td class="center">2021-5-7</td>
                            <th class="center">已入库</th>
                            <td class="center">
                                <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/StockCenter/GoodsDetail.aspx">详情</asp:LinkButton></td>
                        </tr>
                    </tbody>
                </table>
                <div style="text-align: right">
                    <a class="btn btn-warning btn-lg" href="NewDeliveryBill.aspx">发货</a>
                </div>

            </div>
        </div>
    </div>

</asp:Content>

