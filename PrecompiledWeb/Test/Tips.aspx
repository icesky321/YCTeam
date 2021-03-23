<%@ page title="" language="C#" masterpagefile="~/shares/MasterPage.master" autoeventwireup="true" inherits="Test_Tips, App_Web_anjdvrlo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main ">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-heart-o"></i>项目管理</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="index.html">首页</a></li>
                    <li><i class="fa fa-file-text"></i><a href="#">统计中心</a></li>
                    <li><i class="fa fa-heart-o"></i>项目汇总</li>
                </ol>
            </div>
        </div>
        <div class="row profile">
            <div class="row">
                <table>
                    <tr>
                        <td class="center">¥60000元
                                                            <div class="dropdown pull-right">
                                                                <a class="fa fa-comments" data-toggle="dropdown" href="widgets.html#"></a>

<%--                                                                <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                                                                    <li><a href="widgets.html#">变更时间       价格</a></li>
                                                                    <li><a href="widgets.html#"><i style="text-align: left">2021-1-3</i>       <i style="text-align: right"></i>345</a></li>
                                                                    <li><a href="widgets.html#">2021-1-6       347</a></li>
                                                                    <li><a href="widgets.html#">2021-1-9       344</a></li>
                                                                    <li><a href="widgets.html#">2021-2-3       355</a></li>
                                                                </ul>--%>

                                                                <table class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                                                                    <thead>
                                                                        <tr>
                                                                            <th>送货部门</th>
                                                                            <th>送货地址</th>
                                                                            <th>送货日期</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td>综合服务部</td>
                                                                            <td>和义大道</td>
                                                                            <td>2021-6-22</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>物资管理部</td>
                                                                            <td>来福士广场</td>
                                                                            <td>2021--7-23</td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

