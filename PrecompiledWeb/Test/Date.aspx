<%@ page title="" language="C#" masterpagefile="~/shares/MasterPage.master" autoeventwireup="true" inherits="Test_Date, App_Web_anjdvrlo" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main">
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <asp:TextBox ID="tbBeginCreateTime" runat="server"></asp:TextBox>
                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="tbBeginCreateTime"></asp:CalendarExtender>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

