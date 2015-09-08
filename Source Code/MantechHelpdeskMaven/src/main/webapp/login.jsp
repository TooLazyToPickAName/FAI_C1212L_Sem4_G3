<%-- 
    Document   : login
    Created on : Aug 31, 2015, 1:50:29 AM
    Author     : tinblanc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>  
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <!--toastr-->
        <link href="assets/toastr-master/toastr.css" rel="stylesheet" type="text/css" />
        <link rel="shortcut icon" href="img/favicon.html">

        <title>Login</title>

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-reset.css" rel="stylesheet">
        <!--external css-->
        <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/style-responsive.css" rel="stylesheet" />

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->
    </head>

    <body class="login-body">

        <div class="container">

            <form class="form-signin">

                <h2 class="form-signin-heading">sign in now</h2>
                <div class="login-wrap">
                    <input type="text" name="username" class="form-control" placeholder="User ID" autofocus>
                    <input type="password" name="userpass" class="form-control" placeholder="Password">
                    
                    <button class="btn btn-lg btn-login btn-block" type="button" id="btnLogin">Sign in</button>




                </div>

                

            </form>

        </div>


        <!-- js placed at the end of the document so the pages load faster -->
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <!--toastr-->
        <script src="assets/toastr-master/toastr.js"></script>
        <script type="text/javascript">

            $(document).ready(function () {
                var doLogin = function () {
                    var txtUsername = $("input[name=username]").val();
                    var txtPassword = $("input[name=userpass]").val();
                    if (!txtUsername || !txtPassword) {
                        toastr.error("Username and Password is not empty.", "Login Fail!");
                    } else {
                        var params = {username: txtUsername, userpass: txtPassword};
                        $.post(
                                "ajaxLogin",
                                params,
                                function (data) {
                                    if (data.isLoginSuccess) {
                                        window.location.href = data.urlReturn;
                                    } else {
                                        toastr.error("Username or Password is incorrect.", "Login Fail!");
                                        $("input[name=userpass]").val("");
                                    }
                                }
                        );
                    }
                };

                $('input[name=username], input[name=userpass]').keyup(function (e) {
                    if (e.keyCode === 13)
                    {
                        doLogin();
                    }
                });

                $("#btnLogin").on("click", function () {
                    doLogin();
                });
            });
        </script>
    </body>

</html>

