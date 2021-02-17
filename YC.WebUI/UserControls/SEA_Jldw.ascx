<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SEA_Jldw.ascx.cs"
    Inherits="UserControls_SEA_Jldw" %>
<asp:HiddenField ID="hfJldwId" runat="server" />
<asp:FormView ID="formView" runat="server" CaptionAlign="Left"
    DataSourceID="odsJldw" OnItemInserting="BankView_ItemInserting"
    OnItemCommand="formView_ItemCommand">
    <EditItemTemplate>
        <div class="form-horizontal">
            <div class="form-group">
                <label class="col-md-3 control-label" for="text-input">计量单位名称</label>
                <div class="col-md-9">
                    <asp:TextBox ID="tbName" runat="server" class="form-control" placeholder="计量单位名称" Text='<%# Eval("Name") %>'></asp:TextBox>
                    <span class="help-block">计量单位名称，实例：箱、包、件、吨、Kg</span>
                </div>
            </div>
        </div>
        <div class="form-horizontal">
            <div class="form-group">
                <label class="col-md-3 control-label" for="text-input">排序号</label>
                <div class="col-md-9">
                    <asp:TextBox ID="tbOrderIndex" runat="server" class="form-control" placeholder="排序号" Text='<%# Eval("OrderIndex") %>'></asp:TextBox>
                    <span class="help-block">手动设置排序号，支持 Double 数据类型。按从小到大排列。</span>
                </div>
            </div>
        </div>
        <div class="form-horizontal">
            <div class="form-group">
                <label class="col-md-3 control-label" for="text-input"></label>
                <div class="col-md-9">
                    <asp:Button ID="Button1" runat="server" CausesValidation="True" CssClass="btn btn-sm btn-success"
                        CommandName="UpdateStuff" Text="更新" />
                    &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False"
                        CssClass="btn btn-sm btn-success" CommandName="CancelUpdate" Text="取消" />
                </div>
            </div>
        </div>
    </EditItemTemplate>
    <InsertItemTemplate>
        <div class="form-horizontal">
            <div class="form-group">
                <label class="col-md-3 control-label" for="text-input">计量单位名称</label>
                <div class="col-md-9">
                    <asp:TextBox ID="tbName" runat="server" class="form-control" placeholder="计量单位名称" Text='<%# Eval("Name") %>'></asp:TextBox>
                    <span class="help-block">计量单位名称，实例：箱、包、件、吨、Kg</span>
                </div>
            </div>
        </div>
        <div class="form-horizontal">
            <div class="form-group">
                <label class="col-md-3 control-label" for="text-input">排序号</label>
                <div class="col-md-9">
                    <asp:TextBox ID="tbOrderIndex" runat="server" class="form-control" placeholder="排序号" Text='<%# Eval("OrderIndex") %>'></asp:TextBox>
                    <span class="help-block">手动设置排序号，支持 Double 数据类型。按从小到大排列。</span>
                </div>
            </div>
        </div>
        <div class="form-horizontal">
            <div class="form-group">
                <label class="col-md-3 control-label" for="text-input"></label>
                <div class="col-md-9">
                    <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="InsertJldw"
                        Text="添加" CssClass="btn btn-sm btn-success" />
                    &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False"
                        CommandName="Cancel" Text="取消" CssClass="btn btn-sm btn-success" />
                </div>
            </div>
        </div>
    </InsertItemTemplate>
    <ItemTemplate>
        JLDWID:
        <asp:Label ID="JLDWIDLabel" runat="server" Text='<%# Bind("JLDWID") %>' />
        <br />
        Name:
        <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
        <br />
        OrderIndex:
        <asp:Label ID="OrderIndexLabel" runat="server" Text='<%# Bind("OrderIndex") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
            Text="编辑" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
            Text="删除" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
            Text="新建" />
    </ItemTemplate>
</asp:FormView>
<asp:ObjectDataSource ID="odsJldw" runat="server" InsertMethod="CreateJldw"
    SelectMethod="GetJldw" TypeName="YC.BLL.JldwManage"
    UpdateMethod="UpdateJldw" DataObjectTypeName="System.Guid" DeleteMethod="DeleteJldw">
    <InsertParameters>
        <asp:Parameter Name="name" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="jldwId" DbType="Guid" />
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="orderIndex" Type="Int32" />
    </UpdateParameters>
</asp:ObjectDataSource>
