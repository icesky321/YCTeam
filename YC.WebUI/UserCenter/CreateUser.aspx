<%@ Page Title="" Language="C#" MasterPageFile="~/shares/MasterPage.master" AutoEventWireup="true" CodeFile="CreateUser.aspx.cs" Inherits="UserCenter_CreateUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="main">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-laptop"></i>创建用户</h3>
                        <ol class="breadcrumb">
                            <li><i class="fa fa-home"></i><a href="../Default.aspx">首页</a></li>
                            <li><i class="fa fa-laptop"></i>创建用户</li>
                        </ol>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <table>
                                    <tr>
                                        <td>工号： 
                                            <br />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="tbJobNum" runat="server" ValidationGroup="CreateUser" Width="120px"></asp:TextBox>
                                            <br />
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="请输入工号！"
                                                ControlToValidate="tbJobNum" ValidationGroup="CreateUser"></asp:RequiredFieldValidator>
                                            <br />
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>姓名： 
                                            <br />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="tbUserName" runat="server" ValidationGroup="CreateUser" Width="120px"></asp:TextBox>
                                            <br />
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ErrorMessage="请输入用户名！"
                                                ControlToValidate="tbUserName" ValidationGroup="CreateUser"></asp:RequiredFieldValidator>
                                            <br />
                                            <br />
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>密码：<br />
                                            &nbsp;</td>
                                        <td>
                                            <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" ValidationGroup="CreateUser"
                                                Width="120px"></asp:TextBox>
                                            <br />
                                        </td>
                                        <td>
                                            <asp:RegularExpressionValidator ID="revPassword" runat="server" ErrorMessage="请输入3位以上的密码！"
                                                ControlToValidate="tbPassword" ValidationExpression="^\w{3,30}" ValidationGroup="CreateUser"></asp:RegularExpressionValidator>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>确认密码：<br />
                                            &nbsp;</td>
                                        <td>
                                            <asp:TextBox ID="tbConfirmPassword" runat="server" TextMode="Password" ValidationGroup="CreateUser"
                                                Width="120px"></asp:TextBox>
                                            <br />
                                        </td>
                                        <td>
                                            <asp:CompareValidator ID="cvConfirmPassword" runat="server" ErrorMessage="两次密码输入不相同！"
                                                ControlToCompare="tbPassword" ControlToValidate="tbConfirmPassword" ValidationGroup="CreateUser"></asp:CompareValidator>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="请输入检验密码！"
                                                ControlToValidate="tbConfirmPassword" ValidationGroup="CreateUser"></asp:RequiredFieldValidator>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>手机号码:<br />
                                        </td>

                                        <td>
                                            <asp:TextBox ID="tbMobileNum" runat="server"></asp:TextBox>
                                            <br />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <asp:Button ID="btnCreateUser" runat="server" Text="创建用户" ValidationGroup="CreateUser"
                                    OnClick="btnCreateUser_Click" />
                                <br />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            </div>

        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

