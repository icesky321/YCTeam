<%@ Page Title="" Language="C#" MasterPageFile="~/shares/MasterPage.master" AutoEventWireup="true" CodeFile="NewSubProjectInfo.aspx.cs" Inherits="ProjectManage_NewSubProjectInfo" %>

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
                    <li><i class="fa fa-heart-o"></i>新增子项目</li>
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
                            <li>
                                <div>
                                    <h5><i class="fa fa-tablet"></i>录入时间</h5>
                                </div>
                                <h5><strong>
                                    <asp:Label ID="lbOperDate" runat="server" Text=""></asp:Label></strong></h5>
                            </li>
                        </ul>

                    </div>

                </div>

            </div>
            <!--/.col-->

            <div class="col-md-7">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2><i class="fa fa-heart-o red"></i><strong>创建子项目</strong></h2>
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label class="control-label">子项目编号</label>
                            <asp:TextBox ID="tbSubProNum" runat="server" class="form-control"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <label class="control-label">子项目名称</label>
                            <asp:TextBox ID="tbSubProName" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label class="control-label">子项目总金额</label>
                            <asp:TextBox ID="tbAmount" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label class="control-label">采购商</label>
                            <asp:TextBox ID="tbSubPurchaser" runat="server" class="form-control"></asp:TextBox>
                            <ajaxToolkit:AutoCompleteExtender ID="AutoCompleteExtender1" MinimumPrefixLength="1" runat="server" ServicePath="~/WebService.asmx" ServiceMethod="GetCompleteSupplier" TargetControlID="tbSubPurchaser" CompletionInterval="1000"></ajaxToolkit:AutoCompleteExtender>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/config/CorpDetail.aspx" ForeColor="Red">没有此采购商？</asp:HyperLink>
                        </div>
                        <div class="form-group">
                            <label class="control-label">请购部门</label>
                            <asp:TextBox ID="tbDpt" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label class="control-label">负责人</label>
                            <asp:TextBox ID="tbApplicant" runat="server" class="form-control" AutoCompleteType="Disabled"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label class="control-label">申请日期</label>
                            <asp:TextBox ID="tbApplicantDate" runat="server" class="form-control" AutoCompleteType="Disabled"></asp:TextBox>
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="tbApplicantDate" />
                        </div>
                        <div class="form-group">
                            <label class="control-label">备注</label>
                            <asp:TextBox ID="tbRemark" runat="server" class="form-control" placeholder="备注" Text="" TextMode="MultiLine"></asp:TextBox>
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

