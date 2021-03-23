<%@ page title="管理往来单位" language="C#" masterpagefile="~/shares/MasterPage.master" autoeventwireup="true" inherits="CorpList, App_Web_314ubgwp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- start: Content -->
    <div class="main sidebar-minified">

        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-laptop"></i></h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
                    <li><i class="fa fa-cogs"></i><a href="WxgList.aspx">系统配置</a></li>
                    <li><i class="fa  fa-group"></i>往来单位管理</li>
                </ol>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2><i class="fa fa-table red"></i><span class="break"></span><strong>往来单位管理</strong></h2>
                        <div class="panel-actions">
                            <a href="table.html#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                            <a href="table.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                            <a href="table.html#" class="btn-close"><i class="fa fa-times"></i></a>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="alert alert-info">
                            <button type="button" class="close" data-dismiss="alert">×</button>
                            <strong>提示!</strong> 往来单位是与本公司发生业务往来的公司，包括供应商、采购商以及其它费用发生单位。<br />
                            “往来单位名称”需全称，“公司简称”根据自己需要定义。
                        </div>
                        <div class=" btn-toolbar ">
                            <a href="CorpDetail.aspx" class="btn btn-default">创建新公司</a>
                        </div>
                        <asp:Repeater ID="rptApp" runat="server">
                            <HeaderTemplate>
                                <table class="table table-striped table-bordered bootstrap-datatable datatable">
                                    <thead>
                                        <tr>
                                            <th style="width: 30px;">#</th>
                                            <th>往来单位名称</th>
                                            <th>简称</th>
                                            <th>类别</th>
                                            <th>业务联系人姓名</th>
                                            <th>电话</th>
                                            <th>手机号码</th>
                                            <th>手机短号</th>
                                            <th>Email</th>
                                            <th style="width: 150px;">操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Container.ItemIndex+1 %>'></asp:Literal>
                                    </td>
                                    <td><%# Eval("CorpName") %></td>
                                    <td><%# Eval("Abbr") %></td>
                                    <td><%# Eval("CorpType") %></td>
                                    <td><%# Eval("LinkmanName") %></td>
                                    <td><%# Eval("Telephone") %></td>
                                    <td><%# Eval("MobilePhone") %></td>
                                    <td><%# Eval("MobileShort") %></td>
                                    <td><%# Eval("Email") %></td>
                                    <td><a class="btn btn-success" href='<%# "CorpDetail.aspx?id=" + Eval("CorpId").ToString() + "&mode=ReadOnly" %>'>
                                        <i class="fa fa-list"></i>
                                    </a>
                                        <a class="btn btn-info" href='<%# "CorpDetail.aspx?id=" + Eval("CorpId").ToString() + "&mode=Edit" %>'>
                                            <i class="fa fa-edit "></i>
                                        </a>
                                        <a class="btn btn-danger" href="table.html#">
                                            <i class="fa fa-trash-o "></i>

                                        </a></td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </tbody>
                            </table>
                            </FooterTemplate>
                        </asp:Repeater>

                    </div>
                </div>
            </div>
            <!--/col-->

        </div>
        <!--/row-->


    </div>
    <!-- end: Content -->

    <!-- inline scripts related to this page -->
    <script src="assets/js/pages/form-elements.js"></script>
</asp:Content>

