<%@ page title="" language="C#" masterpagefile="~/shares/MasterPage.master" autoeventwireup="true" inherits="PurchasingCenter_PaymentOrder, App_Web_orgjpqpt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main sidebar-minified">

        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-table"></i>付款申请</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="index.html">主页</a></li>
                    <li><i class="fa fa-table"></i>付款申请单</li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">

                <div class="row">
                    <div class="col-lg-4">
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
                    <div class="col-lg-8">
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
                                            <th>供应商</th>
                                            <th>采购商</th>
                                            <th>合同编号</th>
                                            <th>合同金额</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1
                                            </td>
                                            <td>山东钢铁厂</td>
                                            <td>宁波甬诚</td>
                                            <td>2010BC04736273</td>
                                            <td>¥8783.98元</td>
                                            <td>
                                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PurchasingCenter/NewOrder.aspx">申请付款</asp:HyperLink></td>
                                            <td>
                                                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/PurchasingCenter/NewOrder.aspx">付款明细</asp:HyperLink></td>
                                        </tr>
                                        <tr>
                                            <td>2
                                            </td>
                                            <td>日照钢铁厂</td>
                                            <td>宁波甬丁儿</td>
                                            <td>20210BC2873663</td>
                                            <td>¥4495844.98元</td>
                                            <td>
                                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/PurchasingCenter/NewOrder.aspx">申请付款</asp:HyperLink></td>
                                            <td>
                                                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/PurchasingCenter/NewOrder.aspx">付款明细</asp:HyperLink></td>
                                        </tr>
                                        <tr>
                                            <td>2
                                            </td>
                                            <td>吉林钢铁厂</td>
                                            <td>宁波甬诚</td>
                                            <td>2010BC2903974</td>
                                            <td>¥387485.77元</td>
                                            <td>
                                                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/PurchasingCenter/NewOrder.aspx">申请付款</asp:HyperLink>
                                            <td>
                                                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/PurchasingCenter/NewOrder.aspx">付款明细</asp:HyperLink></td>
                                            <td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h2><i class="fa fa-indent red"></i><strong>采购付款申请单</strong></h2>
                            </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <div class="form-group">
                                        <label class="col-lg-2 col-md-2 col-sm-12 control-label">供货单位</label>
                                        <div class="col-lg-10 col-md-10">
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                    <hr>
                                    <br />

                                    <div class="form-group">
                                        <div class="form-group">
                                            <label class="col-lg-2 col-md-2 col-sm-12 control-label">开户行</label>
                                            <div class="col-lg-4 col-md-4">
                                                <input type="text" class="form-control">
                                            </div>
                                            <label class="col-lg-2 col-md-2 col-sm-12 control-label">账号</label>
                                            <div class="col-lg-4 col-md-4">
                                                <input type="text" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                    <br />
                                    <div class="form-group">
                                        <label class="col-md-2 control-label" for="select">付款机构</label>
                                        <div class="col-md-4">
                                            <select id="select" name="select" class="form-control" size="1">
                                                <option value="0">请选择....</option>
                                                <option value="1">宁波甬诚</option>
                                                <option value="2">宁波甬丁儿</option>
                                            </select>
                                        </div>
                                        <label class="col-lg-2 col-md-2 col-sm-12 control-label">付款编号</label>
                                        <div class="col-lg-4 col-md-4">
                                            <input type="text" id="disabled-input2" name="disabled-input" class="form-control" placeholder="FK2021987384743" disabled>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="form-group">
                                    <div class="form-group">
                                        <label class="col-lg-2 col-md-2 col-sm-12 control-label">合同号</label>
                                        <div class="col-lg-4 col-md-4">
                                            <input type="text" id="disabled-input" name="disabled-input" class="form-control" placeholder="2010BC23472847" disabled>
                                        </div>
                                        <label class="col-lg-2 col-md-2 col-sm-12 control-label">金额</label>
                                        <div class="col-lg-4 col-md-4">
                                            <input type="text" id="disabled-input1" name="disabled-input" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <br />
                                <br />
                                <br />
                                <div style="text-align: center">
                                    <button type="submit" class="btn btn-sm btn-success"><i class="fa fa-dot-circle-o"></i>提交</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--.col-->
                </div>
                <!--.row-->
            </div>
            <!--/col-->


        </div>

    </div>

</asp:Content>

