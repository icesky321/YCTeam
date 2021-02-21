<%@ Page Title="" Language="C#" MasterPageFile="~/shares/MasterPage.master" AutoEventWireup="true" CodeFile="ImportExcel.aspx.cs" Inherits="Test_ImportExcel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main">
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <asp:Button ID="btnUpload" runat="server" Text="预览上传" OnClick="btnUpload_Click" ValidationGroup="1" />
                        <asp:Button ID="Button1" runat="server" Text="导入数据" OnClick="Button1_Click" />
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

