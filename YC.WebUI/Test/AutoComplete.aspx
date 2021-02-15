<%@ Page Title="" Language="C#" MasterPageFile="~/shares/MasterPage.master" AutoEventWireup="true" CodeFile="AutoComplete.aspx.cs" Inherits="Test_AutoComplete" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main">
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-body">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <ajaxToolkit:AutoCompleteExtender ID="AutoCompleteExtender1" MinimumPrefixLength="1"  runat="server" ServicePath="~/WebService.asmx" ServiceMethod="GetCompleteSupplier" TargetControlID="TextBox1" CompletionInterval="1000"></ajaxToolkit:AutoCompleteExtender>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

