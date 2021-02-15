﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SEA_Stuff.ascx.cs"
    Inherits="UserControls_SEA_Stuff" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:HiddenField ID="hfSId" runat="server" />
<asp:FormView ID="formView" runat="server" CaptionAlign="Left" Width="100%"
    DataSourceID="ods1" OnItemInserting="View_ItemInserting" OnItemCommand="formView_ItemCommand"
    OnDataBound="formView_DataBound" DefaultMode="Insert">
    <EditItemTemplate>
        <div class="form-horizontal">
            <div class="form-group">
                <label class="col-md-3 control-label" for="text-input">工号</label>
                <div class="col-md-9">
                    <asp:TextBox ID="tbJobNumber" runat="server" class="form-control" placeholder="员工工号" Text='<%# Eval("JobNumber") %>'></asp:TextBox>
                    <span class="help-block">员工工号，同时也是钉钉平台中的 UserId</span>
                </div>
            </div>
        </div>
        <div class="form-horizontal">
            <div class="form-group">
                <label class="col-md-3 control-label" for="text-input">姓名</label>
                <div class="col-md-9">
                    <asp:TextBox ID="tbRealName" runat="server" class="form-control" placeholder="姓名" Text='<%# Eval("RealName") %>'></asp:TextBox>
                    <span class="help-block">员工真实姓名</span>
                </div>
            </div>
        </div>
        <div class="form-horizontal">
            <div class="form-group">
                <label class="col-md-3 control-label" for="text-input">手机号码</label>
                <div class="col-md-9">
                    <asp:TextBox ID="tbMobilePhone" runat="server" class="form-control" placeholder="手机号码" Text='<%# Eval("MobilePhone") %>'></asp:TextBox>
                    <span class="help-block">用于接收系统信息。</span>
                </div>
            </div>
        </div>
        <div class="form-horizontal">
            <div class="form-group">
                <label class="col-md-3 control-label" for="text-input">手机短号</label>
                <div class="col-md-9">
                    <asp:TextBox ID="tbMobileShort" runat="server" class="form-control" placeholder="手机短号" Text='<%# Eval("MobileShort") %>'></asp:TextBox>
                    <span class="help-block">用于语音联系。</span>
                </div>
            </div>
        </div>
        <div class="form-horizontal">
            <div class="form-group">
                <label class="col-md-3 control-label" for="text-input"></label>
                <div class="col-md-9">
                    <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CssClass="btn btn-sm btn-success"
                        CommandName="UpdateStuff" Text="更新" />
                    &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False"
                        CssClass="btn btn-sm btn-success" CommandName="CancelUpdate" Text="取消" />
                </div>
            </div>
        </div>
    </EditItemTemplate>
    <InsertItemTemplate>
        <div class="form-horizontal">
            <div class="form-group">
                <label class="col-md-3 control-label" for="text-input">工号</label>
                <div class="col-md-9">
                    <asp:TextBox ID="tbJobNumber" runat="server" class="form-control" placeholder="员工工号" Text='<%# Eval("JobNumber") %>'></asp:TextBox>
                    <span class="help-block">员工工号，同时也是钉钉平台中的身份Id</span>
                </div>
            </div>
        </div>
        <div class="form-horizontal">
            <div class="form-group">
                <label class="col-md-3 control-label" for="text-input">姓名</label>
                <div class="col-md-9">
                    <asp:TextBox ID="tbRealName" runat="server" class="form-control" placeholder="姓名" Text='<%# Eval("RealName") %>'></asp:TextBox>
                    <span class="help-block">员工真实姓名</span>
                </div>
            </div>
        </div>
        <div class="form-horizontal">
            <div class="form-group">
                <label class="col-md-3 control-label" for="text-input">手机号码</label>
                <div class="col-md-9">
                    <asp:TextBox ID="tbMobilePhone" runat="server" class="form-control" placeholder="手机号码" Text='<%# Eval("MobilePhone") %>'></asp:TextBox>
                    <span class="help-block">用于接收短信信息。</span>
                </div>
            </div>
        </div>
        <div class="form-horizontal">
            <div class="form-group">
                <label class="col-md-3 control-label" for="text-input">手机短号</label>
                <div class="col-md-9">
                    <asp:TextBox ID="tbMobileShort" runat="server" class="form-control" placeholder="手机短号" Text='<%# Eval("MobileShort") %>'></asp:TextBox>
                    <span class="help-block">用于语音联系。</span>
                </div>
            </div>
        </div>
        <div class="form-horizontal">
            <div class="form-group">
                <label class="col-md-3 control-label" for="text-input"></label>
                <div class="col-md-9">
                    <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="InsertStuff"
                        Text="添加" CssClass="btn btn-sm btn-success" />
                    &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False"
                        CommandName="CancelInsert" Text="取消" CssClass="btn btn-sm btn-success" />
                </div>
            </div>
        </div>
    </InsertItemTemplate>
    <InsertRowStyle Width="400px" />
    <ItemTemplate>
        <div class="form-horizontal">
            <div class="form-group">
                <label class="col-md-3 control-label" for="text-input">工号</label>
                <div class="col-md-9">
                    <p class="form-control-static"><%# Eval("JobNumber") %></p>
                </div>
            </div>
        </div>
        <div class="form-horizontal">
            <div class="form-group">
                <label class="col-md-3 control-label" for="text-input">姓名</label>
                <div class="col-md-9">
                    <p class="form-control-static"><%# Eval("RealName") %></p>
                </div>
            </div>
        </div>
        <div class="form-horizontal">
            <div class="form-group">
                <label class="col-md-3 control-label" for="text-input">手机号码</label>
                <div class="col-md-9">

                    <p class="form-control-static"><%# Eval("MobilePhone") %></p>
                </div>
            </div>
        </div>
        <div class="form-horizontal">
            <div class="form-group">
                <label class="col-md-3 control-label" for="text-input">手机短号</label>
                <div class="col-md-9">

                    <p class="form-control-static"><%# Eval("MobileShort") %></p>
                </div>
            </div>
        </div>
        <div class="form-horizontal">
            <div class="form-group">
                <label class="col-md-3 control-label" for="text-input"></label>
                <div class="col-md-9">
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                        Text="编辑" CssClass="btn btn-sm btn-success" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="DeleteRepairman"
                        Text="删除" CssClass="btn btn-sm btn-success" />
                </div>
            </div>
        </div>
    </ItemTemplate>
</asp:FormView>
<asp:ObjectDataSource ID="ods1" runat="server" SelectMethod="GetStuffById" TypeName="YC.BLL.StuffManage">
    <SelectParameters>
        <asp:ControlParameter ControlID="hfSId" Name="sId" PropertyName="Value"
            DbType="Guid" />
    </SelectParameters>
</asp:ObjectDataSource>
