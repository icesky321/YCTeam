<%@ Page Title="" Language="C#" MasterPageFile="~/shares/MasterPage.master" AutoEventWireup="true" CodeFile="NewMaterialOrder.aspx.cs" Inherits="ProjectManage_NewMaterialOrder" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- start: Content -->
    <div class="main ">

        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-heart-o"></i>项目管理</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="index.html">首页</a></li>
                    <li><i class="fa fa-file-text"></i><a href="#">项目管理</a></li>
                    <li><i class="fa fa-heart-o"></i>新增订单</li>
                </ol>
            </div>
        </div>

        <div class="row profile">

            <div class="col-md-5">

                <div class="panel panel-default">
                    <div class="panel-body">

                        <ul class="profile-details">
                            <li>
                                <div>
                                    <asp:HiddenField ID="hfProId" runat="server" />
                                    <asp:HiddenField ID="hfSubProId" runat="server" />
                                    <h5><i class="fa fa-thumbs-up"></i>项目名称</h5>
                                </div>
                                <h4><strong>
                                    <asp:Label ID="lbProName" runat="server" Text=""></asp:Label></strong></h4>
                            </li>
                            <li>
                                <div>
                                    <h5><i class="fa fa-building-o"></i>项目编号</h5>
                                </div>
                                <h4><strong>
                                    <asp:Label ID="lbProNum" runat="server" Text=""></asp:Label></strong></h4>
                            </li>
                        </ul>

                        <hr>

                        <ul class="profile-details">
                            <li>
                                <div>
                                    <h5><i class="fa fa-phone"></i>项目状态</h5>
                                </div>
                                <h4><strong>
                                    <asp:Label ID="lbStatus" runat="server" Text=""></asp:Label></strong></h4>
                            </li>
                        </ul>
                        <hr>
                        <ul class="profile-details">
                            <li>
                                <div>
                                    <h5><i class="fa fa-building-o"></i>订单金额</h5>
                                </div>
                                <h4><strong>
                                    <asp:Label ID="lbAmount" runat="server" Text=""></asp:Label></strong></h4>
                            </li>
                            <li>
                                <div>
                                    <h5><i class="fa fa-building-o"></i>采购商</h5>
                                </div>
                                <h4><strong>
                                    <asp:Label ID="lbPurchaser" runat="server" Text=""></asp:Label></strong></h4>
                            </li>
                        </ul>
                    </div>

                </div>

            </div>
            <!--/.col-->

            <div class="col-md-7">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2><i class="fa fa-heart-o red"></i><strong>创建采购单</strong></h2>
                    </div>
                    <div class="panel-body">
                                                <div class="form-group">
                            <label class="control-label">订单编号</label>
                            <asp:TextBox ID="tbOdNum" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label class="control-label">收货部门</label>
                            <asp:TextBox ID="tbRcvDpt" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label class="control-label">收货地址</label>
                            <asp:TextBox ID="tbRcvAddr" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label class="control-label">到货日期</label>
                            <asp:TextBox ID="tbRcvDate" runat="server" class="form-control" AutoCompleteType="Disabled"></asp:TextBox>
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="tbRcvDate" />
                        </div>
                        <div class="form-group">
                            <asp:HiddenField ID="hfODId" runat="server" />
                            <label class="control-label">上传采购明细</label>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                            <asp:Button ID="btnUpload" runat="server" Text="数据核验" OnClick="btnUpload_Click" ValidationGroup="1" />
                            <asp:GridView ID="GridView1" runat="server">
                            </asp:GridView>
                        </div>

                        <div class="form-group pull-right">
                            <asp:Button ID="btSure" runat="server" class="btn btn-primary" Text="确定" OnClick="btSure_Click" />
                        </div>
                    </div>
                </div>

            </div>
            <!--/.col-->

        </div>
        <!--/.row profile-->
    </div>
    <!-- end: Content -->
</asp:Content>

