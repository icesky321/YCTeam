﻿<%@ Page Title="" Language="C#" MasterPageFile="~/shares/MasterPage.master" AutoEventWireup="true" CodeFile="CreateUser.aspx.cs" Inherits="UserCenter_CreateUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <br />
            <h4>创建用户</h4>
            <hr style="border-right: khaki 1px solid; border-top: khaki 1px solid; border-left: khaki 1px solid; border-bottom: khaki 1px solid" />
            <table>
                <tr>
                    <td>用户名：
                    </td>
                    <td>
                        <asp:TextBox ID="tbUserName" runat="server" ValidationGroup="CreateUser" Width="120px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ErrorMessage="请输入用户名！"
                            ControlToValidate="tbUserName" ValidationGroup="CreateUser"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>密码：
                    </td>
                    <td>
                        <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" ValidationGroup="CreateUser"
                            Width="120px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="revPassword" runat="server" ErrorMessage="请输入3位以上的密码！"
                            ControlToValidate="tbPassword" ValidationExpression="^\w{3,30}" ValidationGroup="CreateUser"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>确认密码：
                    </td>
                    <td>
                        <asp:TextBox ID="tbConfirmPassword" runat="server" TextMode="Password" ValidationGroup="CreateUser"
                            Width="120px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="cvConfirmPassword" runat="server" ErrorMessage="两次密码输入不相同！"
                            ControlToCompare="tbPassword" ControlToValidate="tbConfirmPassword" ValidationGroup="CreateUser"></asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="请输入检验密码！"
                            ControlToValidate="tbConfirmPassword" ValidationGroup="CreateUser"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>手机号码</td>

                    <td>
                        <asp:TextBox ID="tbMobileNum" runat="server"></asp:TextBox></td>
                </tr>
            </table>
            <br />
            <asp:Button ID="btnCreateUser" runat="server" Text="创建用户" ValidationGroup="CreateUser"
                OnClick="btnCreateUser_Click" />
            <br />
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

