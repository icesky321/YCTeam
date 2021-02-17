<%@ Page Title="配置计量单位" Language="C#" MasterPageFile="~/shares/MasterPage.master" AutoEventWireup="true"
    CodeFile="ConfigJldw.aspx.cs" Inherits="Config_Jldw" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="user" TagName="SEA_Jldw" Src="~/UserControls/SEA_Jldw.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .gvStorage input[type="text"] {
            width: 120px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- start: Content -->
    <div class="main sidebar-minified">

        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-laptop"></i>计量单位管理</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
                    <li><i class="fa fa-cogs"></i><a href="WxgList.aspx">系统配置</a></li>
                    <li><i class="fa  fa-group"></i>计量单位管理</li>
                </ol>
            </div>
        </div>


        <div class="row">
            <div class="col-lg-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2><i class="fa fa-table red"></i><span class="break"></span><strong>配置计量单位</strong></h2>
                        <div class="panel-actions">
                            <a href="table.html#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                            <a href="table.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                            <a href="table.html#" class="btn-close"><i class="fa fa-times"></i></a>
                        </div>
                    </div>
                    <div class="panel-body">

                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                                    <asp:View ID="view1" runat="server">
                                        <div class="alert alert-info">
                                            <button type="button" class="close" data-dismiss="alert">×</button>
                                            <strong>提示!</strong> 当前共有计量单位：<asp:Label ID="lbCountOfStorage" runat="server" Text="Label"></asp:Label>个<br />
                                        </div>

                                        <div class=" btn-toolbar ">
                                            <asp:Button ID="btnNewBank" runat="server" Text="新建计量单位" CssClass="btn btn-info" OnClick="btnNewBank_Click" />
                                        </div>


                                        <asp:GridView ID="gvJldw" runat="server" AutoGenerateColumns="False" DataSourceID="odsJldw"
                                            Width="100%" DataKeyNames="JldwId" CssClass="table table-striped table-bordered bootstrap-datatable datatable" OnRowCommand="gvJldw_RowCommand">
                                            <Columns>
                                                <asp:TemplateField HeaderText="#">
                                                    <ItemTemplate>
                                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Container.DataItemIndex+1 %>'></asp:Literal>
                                                    </ItemTemplate>
                                                    <ItemStyle Width="50px" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="计量单位名称" SortExpression="JldwName">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="lbJldw" runat="server" Text='<%# Bind("Name") %>' CssClass="form-control"></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <InsertItemTemplate>
                                                        <asp:TextBox ID="lbJldw" runat="server" Text='<%#Bind("Name") %>'></asp:TextBox>
                                                    </InsertItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="显示顺序" SortExpression="OrderNumber">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("OrderIndex") %>' CssClass="form-control"></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("OrderIndex") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField ShowHeader="False">
                                                    <EditItemTemplate>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"
                                                            Text="更新"></asp:LinkButton>
                                                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                                            Text="取消"></asp:LinkButton>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit"
                                                            Text="编辑" CssClass="btn btn-info"></asp:LinkButton>
                                                    </ItemTemplate>
                                                    <ItemStyle Width="80px" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="删除">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lbtnDelete" runat="server" CommandName="DeleteDep" CommandArgument='<%# Eval("JldwId") %>'
                                                            Text="删除" OnClientClick='return confirm("确定要删除吗？")' CssClass="btn btn-danger"></asp:LinkButton>
                                                    </ItemTemplate>
                                                    <ItemStyle Width="30px" />
                                                </asp:TemplateField>
                                            </Columns>
                                            <EditRowStyle Width="50px" />
                                        </asp:GridView>
                                        <asp:ObjectDataSource ID="odsJldw" runat="server" SelectMethod="GetJldw"
                                            TypeName="YC.BLL.JldwManage" UpdateMethod="UpdateJldw"
                                            InsertMethod="CreateJldw">
                                            <InsertParameters>
                                                <asp:Parameter Name="name" Type="String" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="jldwId" DbType="Guid" />
                                                <asp:Parameter Name="name" Type="String" />
                                                <asp:Parameter Name="OrderIndex" Type="Double" />
                                            </UpdateParameters>
                                        </asp:ObjectDataSource>
                                    </asp:View>
                                    <asp:View ID="view2" runat="server">
                                        <div class=" btn-toolbar ">

                                            <asp:Button ID="btnGoback" runat="server" Text="返回" CssClass="btn btn-info" OnClick="btnGoback_Click" />
                                        </div>
                                        <user:SEA_Jldw ID="SEA_Jldw1" runat="server" />
                                    </asp:View>
                                </asp:MultiView>


                            </ContentTemplate>
                        </asp:UpdatePanel>





                    </div>
                </div>
            </div>
            <!--/col-->

        </div>
        <!--/row-->





        <div class="contentArea">
        </div>

    </div>
    <!-- end: Content -->

    <!-- inline scripts related to this page -->
    <script src="assets/js/pages/form-elements.js"></script>
</asp:Content>
