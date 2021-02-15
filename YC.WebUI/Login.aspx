<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>甬诚项目管理系统</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css" />

    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css" />
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css" />

    <script src="lib/jquery-1.7.2.min.js" type="text/javascript"></script>

    <!-- Demo page code -->

    <style type="text/css">
        #line-chart {
            height: 300px;
            width: 800px;
            margin: 0px auto;
            margin-top: 1em;
        }

        .brand {
            font-family: georgia, serif;
        }

            .brand .first {
                color: #ccc;
                font-style: italic;
            }

            .brand .second {
                color: #fff;
                font-weight: bold;
            }
    </style>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="lib/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="../assets/ico/favicon.ico" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png" />
</head>
<body>
    <form runat="server" name="form1">
        <div class="navbar">
            <div class="navbar-inner">
                <ul class="nav pull-right">
                </ul>
                <a class="brand" href="index.html"><span class="first">甬诚</span> <span class="second">项目管理系统</span></a>
            </div>
        </div>




        <div class="row-fluid">
            <div class="dialog">
                <div class="block">
                    <p class="block-heading">登录</p>
                    <div class="block-body">

                        <label>用户名</label>
                        <input type="text" class="span12" />
                        <label>密码</label>
                        <input type="password" class="span12" />
                        <a href="index.html" class="btn btn-primary pull-right">登录</a>
                        <%--                        <label class="remember-me">
                            <input type="checkbox" />
                            Remember me</label>--%>
                        <div class="clearfix"></div>

                    </div>
                </div>
                <p><a href="reset-password.html">忘记密码</a></p>
            </div>
        </div>





        <script src="lib/bootstrap/js/bootstrap.js"></script>
        <script type="text/javascript">
            $("[rel=tooltip]").tooltip();
            $(function () {
                $('.demo-cancel-click').click(function () { return false; });
            });
    </script>
        <asp:Login ID="Login1" runat="server">
        </asp:Login>
    </form>
</body>
</html>
