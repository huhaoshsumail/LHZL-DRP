<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>莲花之旅 | 登录</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="../node_modules/admin-lte/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../node_modules/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="../node_modules/ionicons/dist/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../node_modules/admin-lte/dist/css/AdminLTE.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="../node_modules/admin-lte/plugins/iCheck/square/blue.css">
    <link rel="stylesheet" href="assets/css/login.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="node_modules/html5shiv/dist/html5shiv.min.js"></script>
    <script src="node_modules/respond.js/dest/respond.min.js"></script>
    <![endif]-->
</head>
<body class="hold-transition">
<div class="login-box">
    <div class="login-logo">
        <a href="javascript:;"><b>莲花之旅</b>+</a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">分销系统</p>

        <div class="form-group has-feedback">
            <input type="email" class="form-control" placeholder="账号" id="opacct">
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
            <input type="password" class="form-control" placeholder="密码" id="operpwd">
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
        </div>
        <div class="row">
            <div class="col-xs-8">
                <div class="checkbox icheck">
                    <label class="remember">
                        <input type="checkbox"> 记住账号
                    </label>
                </div>
            </div>
            <!-- /.col -->
            <div class="col-xs-4">
                <button id="login" class="btn btn-primary btn-block btn-flat">登录</button>
            </div>
            <!-- /.col -->
        </div>

        <div class="social-auth-links text-center">
            <p>- OR -</p>
            <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-qq"></i> QQ</a>
            <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-weibo"></i> 微博</a>
        </div>

        <a href="#">忘记密码</a><br>
        <a href="register.jsp" class="text-center">注册账号</a>

    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 2.1.4 -->
<script src="../node_modules/admin-lte/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- Bootstrap 3.3.5 -->
<script src="../node_modules/admin-lte/bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="../node_modules/admin-lte/plugins/iCheck/icheck.min.js"></script>
<script src="assets/js/login.js"></script>
</body>
</html>
