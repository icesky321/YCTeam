<%@ page title="" language="C#" masterpagefile="~/shares/MasterPage.master" autoeventwireup="true" inherits="ProjectManage_NewProjectInfo, App_Web_zwpbimzp" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main ">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-tags"></i>创建项目信息</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="index.html">主页</a></li>
                    <li><i class="fa fa-list-alt"></i><a href="#">项目管理</a></li>
                    <li><i class="fa fa-tags"></i>创建项目信息</li>
                </ol>
            </div>
        </div>
        <div class="row">

            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2><i class="fa fa-tags red"></i><strong>创建向导</strong></h2>
                        <div class="panel-actions">
                            <a href="form-elements.html#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                            <a href="form-elements.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                            <a href="form-elements.html#" class="btn-close"><i class="fa fa-times"></i></a>
                        </div>
                    </div>
                    <div class="panel-body">

                        <div id="wizard2" class="wizard-type2">
                            <ul class="steps">
                                <li><a href="NewProjectInfo.aspx#tab21" data-toggle="tab"><span class="badge badge-info"><i class="fa fa-star"></i></span>项目概况</a></li>
                                <li><a href="NewProjectInfo.aspx#tab22" data-toggle="tab"><span class="badge badge-info"><i class="fa fa-credit-card"></i></span>项目信息</a></li>
                                <%--                                <li><a href="NewProjectInfo.aspx#tab23" data-toggle="tab"><span class="badge badge-info"><i class="fa fa-building"></i></span>Company Details</a></li>--%>
                                <%-- <li><a href="NewProjectInfo.aspx#tab24" data-toggle="tab"><span class="badge badge-info"><i class="fa fa-check"></i></span>完成</a></li>--%>
                            </ul>
                            <div class="progress thin">
                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
                                </div>
                            </div>
                            <div class="tab-content">
                                <div class="tab-pane" id="tab21">

                                    <div class="form-group">
                                        <label for="email-w2">项目编号</label>
                                        <asp:TextBox ID="tbProNum" runat="server" class="form-control" placeholder="项目编号" Text=""></asp:TextBox>
                                        <span class="help-block">请输入项目编号</span>
                                        <asp:HiddenField ID="hfProId" runat="server" />
                                    </div>
                                    <div class="form-group">
                                        <label for="password-w2">项目名称</label>
                                        <asp:TextBox ID="tbProName" runat="server" class="form-control" placeholder="项目名称" Text=""></asp:TextBox>
                                        <span class="help-block">请输入项目名称</span>
                                    </div>

                                </div>
                                <div class="tab-pane" id="tab22">
                                    <div class="form-group">
                                        <label for="password-w2">项目金额</label>
                                        <asp:TextBox ID="tbAmount" runat="server" class="form-control" placeholder="项目金额(元)" Text="" Width="500px"></asp:TextBox>
                                        <span class="help-block">请输入合同金额</span>
                                    </div>
                                    <div class="form-group">
                                        <label for="password-w2">采购商</label>
                                        <asp:TextBox ID="tbPurchaser" runat="server" class="form-control" placeholder="采购商" Text=""></asp:TextBox>
                                        <ajaxToolkit:AutoCompleteExtender ID="AutoCompleteExtender1" MinimumPrefixLength="1" runat="server" ServicePath="~/WebService.asmx" ServiceMethod="GetCompleteSupplier" TargetControlID="tbPurchaser" CompletionInterval="1000"></ajaxToolkit:AutoCompleteExtender>
                                        <span class="help-block">可通过拼音首字母或中文模糊查询</span>     <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/config/CorpDetail.aspx" ForeColor="Red">没有此采购商？</asp:HyperLink>                       
                                    </div>
                                    <div class="form-group">
                                        <label for="password-w2">请购部门</label>
                                        <asp:TextBox ID="tbDpt" runat="server" class="form-control" placeholder="请购部门" Text=""></asp:TextBox>
                                        <span class="help-block">请输入申请部门</span>
                                    </div>
                                    <div class="form-group">
                                        <label for="password-w2">负责人</label>
                                        <asp:TextBox ID="tbApplicant" runat="server" class="form-control" placeholder="负责人" Text=""></asp:TextBox>
                                        <span class="help-block">请输入采购商负责人</span>
                                    </div>
                                    <div class="form-group">
                                        <label for="password-w2">申请日期</label>
                                        <asp:TextBox ID="tbApplicantDate" runat="server" class="form-control" placeholder="申请日期" Text="" AutoCompleteType="Disabled"></asp:TextBox>
                                        <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="tbApplicantDate" />
                                        <span class="help-block">请选择申请日期</span>
                                    </div>
                                    <div class="form-group">
                                        <label for="password-w2">备注</label>
                                        <asp:TextBox ID="tbRemark" runat="server" class="form-control" placeholder="备注" Text="" TextMode="MultiLine"></asp:TextBox>
                                        <span class="help-block">添加未尽事宜</span>
                                    </div>
                                </div>
                                <%--                                <div class="tab-pane" id="tab23">
                                    <div class="form-group">
                                        <label for="company-w2">Company</label>
                                        <input type="text" class="form-control" id="company-w2" placeholder="Company name">
                                    </div>

                                    <div class="form-group">
                                        <label for="vat-w2">VAT</label>
                                        <input type="text" class="form-control" id="vat-w2" placeholder="040.0253.001">
                                    </div>

                                    <div class="form-group">
                                        <label for="street-w2">Street</label>
                                        <input type="text" class="form-control" id="street-w2" placeholder="Street">
                                    </div>

                                    <div class="row">

                                        <div class="form-group col-sm-8">
                                            <label for="city-w2">City</label>
                                            <input type="text" class="form-control" id="city-w2" placeholder="City">
                                        </div>

                                        <div class="form-group col-sm-4">
                                            <label for="postal-code-w2">Postal Code</label>
                                            <input type="text" class="form-control" id="postal-code-w2" placeholder="Postal Code">
                                        </div>

                                    </div>
                                    <!--/row-->

                                    <div class="form-group">
                                        <label for="country-w2">Country</label>
                                        <input type="text" class="form-control" id="country-w2" placeholder="Country">
                                    </div>
                                </div>--%>
                                <%--                                <div class="tab-pane" id="tab24">
                                    完成
                                </div>--%>
                                <div class="actions">
                                    <input type="button" class="btn btn-default button-previous" name="prev" value="上一步" />
                                    <input type="button" class="btn btn-success button-next pull-right" name="next" value="下一步" />
                                    <asp:Button ID="btFinish" runat="server" CausesValidation="True"
                                        Text="完成" CssClass="btn btn-primary button-finish pull-right" OnClick="btFinish_Click" />
                                    <%--<input type="button" class="btn btn-primary button-finish pull-right" name="finish" value="完成" style="display: none" />--%>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>

            </div>
            <!--/col-->

        </div>
    </div>

    <!-- start: JavaScript-->

    <script src="../assets/js/jquery-2.1.1.min.js"></script>

    <!--<![endif]-->


    <!-- inline scripts related to this page -->
    <script src="../assets/js/pages/form-wizard.js"></script>

    <!-- end: JavaScript-->
</asp:Content>
