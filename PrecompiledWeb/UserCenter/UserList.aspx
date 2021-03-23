<%@ page title="系统用户" language="C#" masterpagefile="~/shares/MasterPage.master" autoeventwireup="true" inherits="UserList, App_Web_kmpnkywh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- start: Content -->
    <div class="main sidebar-minified">

        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-laptop"></i>系统配置</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
                    <li><i class="fa fa-cogs"></i><a href="UserList.aspx">系统配置</a></li>
                    <li><i class="fa  fa-group"></i>员工管理</li>
                </ol>
            </div>
        </div>

        <div class="row">

            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2><i class="fa fa-table red"></i><span class="break"></span><strong>员工管理</strong></h2>
                        <div class="panel-actions">
                            <a href="table.html#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                            <a href="table.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                            <a href="table.html#" class="btn-close"><i class="fa fa-times"></i></a>
                        </div>
                    </div>

                    <div class="panel-body">
                        <div class="alert alert-info">
                            <button type="button" class="close" data-dismiss="alert">×</button>
                            <strong>提示!</strong> 添加员工后，将同时为该员工创建出系统账户，“系统账户”为本系统的登录用户名，初始密码为：12345678。<br />
                            同时，该系统账户名必须与甬诚钉钉平台的 UserID 一致，否则无法接收到钉钉信息。<br />

                        </div>

                        <div class=" btn-toolbar ">
                            <a href="UserDetail.aspx" class="btn btn-default">创建新员工</a>
                        </div>

                        <asp:Repeater ID="rptApp" runat="server">
                            <HeaderTemplate>
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th><%# Container.ItemIndex+1 %>
                                            </th>
                                            <th>系统账户</th>
                                            <th>姓名</th>
                                            <th>手机号码</th>
                                            <th>手机短号</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td>1
                                    </td>
                                    <td><%# Eval("JobNumber") %></td>
                                    <td><%# Eval("RealName") %></td>
                                    <td><%# Eval("MobilePhone") %></td>
                                    <td><%# Eval("MobileShort") %></td>
                                    <td><a class="btn btn-success" href='<%# "UserDetail.aspx?id=" + Eval("SId").ToString() + "&mode=ReadOnly" %>'>
                                        <i class="fa fa-list"></i>
                                    </a>
                                        <a class="btn btn-info" href='<%# "UserDetail.aspx?id=" + Eval("SId").ToString() + "&mode=Edit" %>'>
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

