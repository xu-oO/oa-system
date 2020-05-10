<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>自动化管理系统</title>
    <meta name="keywords" content="HTML5 Bootstrap 3 Admin Template UI Theme" />
    <meta name="description" content="AbsoluteAdmin - A Responsive HTML5 Admin UI Framework">
    <meta name="author" content="AbsoluteAdmin">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="assets/skin/default_skin/css/theme.css">
    <link rel="stylesheet" type="text/css" href="assets/admin-tools/admin-forms/css/admin-forms.css">
    <link rel="shortcut icon" href="assets/img/favicon.ico">
</head>
<body class="external-page external-alt sb-l-c sb-r-c">
<div class="breadcrumb-area pt-15 pb-15">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">

                <div class="breadcrumb-container">
                    <nav>
                        <ul>
                            <li>员工注册</li>
                        </ul>
                    </nav>
                </div>

            </div>
        </div>
    </div>
</div>


<div class="page-section mb-50">
    <div class="container">

        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-3 col-xs-12"></div>
            <div class="col-sm-12 col-md-12 col-lg-6 col-xs-12">
                <form action="/employee/register" method="post" class="loginForm" >

                    <div class="login-form">
                        <h4 class="login-title">请填写信息完成注册</h4>

                        <div class="row">
                            <div class="col-md-8 col-12 mb-20">
                                <label>用户名：</label>
                                <input class="mb-0" type="text" name="name" id="name" placeholder="用户名">
                            </div>
                            <div class="col-md-4 col-12 mb-20">
                                <span style="color: red">${error}</span>
                            </div>
                            <div class="col-md-8 col-12 mb-20">
                                <label>密码：</label>
                                <input class="mb-0" type="password" name="password" id="password" placeholder="密码">
                            </div>
                            <div class="col-md-8 col-12 mb-20">
                                <label>确认密码：</label>
                                <input class="mb-0" type="password" name="password2" id="password2" placeholder="确认密码" onkeyup="validate()">
                            </div>
                            <div class="col-md-4 col-12 mb-20">
                                <span id="markP"></span>
                            </div>
                            <div class="col-md-12 mb-20">
                                <label>地址:</label>
                                <input class="mb-0" type="text" name="address" id="address" placeholder="常用收货地址">
                            </div>
                            <div class="col-md-8 mb-20">
                                <label>手机:</label>
                                <input class="mb-0" type="text"  name="phone" id="phone" placeholder="手机号码">
                            </div>
                            <div class="col-md-4 col-12 mb-20">
                                <span id="markPhone"></span>
                            </div>

                            <div class="col-12">
                                <button type="submit" class="register-button mt-0" id="register">注册</button>
                            </div>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    function validate(){
        //验证两次输入密码是否一致
        var pwd = $("#password").val();
        var pwd2 = $("#password2").val();
        <!-- 对比两次输入的密码 -->
        if(pwd == pwd2)
        {
            $("#markP").html("密码相同");
            $("#markP").css("color","green");
            $("#register").removeAttr("disabled");
        }
        else {
            $("#markP").html("密码不同，请确认");
            $("#markP").css("color","red")
            $("#register").attr("disabled","disabled");
        }
    }
    $(function () {
        //验证
        $("form.loginForm").submit(function(){
            //验证不能为空
            if(0==$("#name").val().length){
                alert("用户名不能为空！");
                return false;
            }
            return true;
        });
    })


</script>
<script src="vendor/jquery/jquery-1.11.1.min.js"></script>
<script src="vendor/jquery/jquery_ui/jquery-ui.min.js"></script>
<script src="assets/js/utility/utility.js"></script>
<script src="assets/js/demo/demo.js"></script>
<script src="assets/js/main.js"></script>
</body>
</html>
