<%@ page language="java" contentType="text/html;charset=utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<title>莲花之旅</title>
<base href="<%=basePath%>">
<link href="favicon.ico" rel="shortcut icon">
<link href="node_modules/nprogress/nprogress.css" rel="stylesheet">
<link href="node_modules/admin-lte/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="node_modules/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="node_modules/ionicons/dist/css/ionicons.min.css" rel="stylesheet">
<link href="node_modules/admin-lte/dist/css/AdminLTE.min.css" rel="stylesheet">
<link href="node_modules/admin-lte/dist/css/skins/_all-skins.min.css" rel="stylesheet">
<link href="node_modules/admin-lte/plugins/iCheck/flat/blue.css" rel="stylesheet">
<link href="node_modules/admin-lte/plugins/morris/morris.css" rel="stylesheet">
<link href="node_modules/admin-lte/plugins/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet">
<link href="node_modules/admin-lte/plugins/datepicker/datepicker3.css" rel="stylesheet">
<link href="node_modules/admin-lte/plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet">
<link href="node_modules/admin-lte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet">
<link href="node_modules/magnific-popup/dist/magnific-popup.css" rel="stylesheet">
<link href="admin/assets/css/index.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="node_modules/html5shiv/dist/html5shiv.min.js"></script>
<script src="node_modules/respond.js/dest/respond.min.js"></script>
<![endif]-->


<script src="node_modules/admin-lte/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script src="node_modules/admin-lte/plugins/jQueryUI/jquery-ui.min.js"></script>
<script>$.widget.bridge('uibutton', $.ui.button);</script>
<script src="node_modules/admin-lte/bootstrap/js/bootstrap.min.js"></script>
<script src="node_modules/raphael/raphael-min.js"></script>
<script src="node_modules/admin-lte/plugins/morris/morris.min.js"></script>
<script src="node_modules/admin-lte/plugins/sparkline/jquery.sparkline.min.js"></script>
<script src="node_modules/admin-lte/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="node_modules/admin-lte/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="node_modules/admin-lte/plugins/knob/jquery.knob.js"></script>
<script src="node_modules/moment/moment.js"></script>
<script src="node_modules/admin-lte/plugins/daterangepicker/daterangepicker.js"></script>
<script src="node_modules/admin-lte/plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="node_modules/admin-lte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="node_modules/admin-lte/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="node_modules/admin-lte/plugins/fastclick/fastclick.js"></script>
<script src="node_modules/admin-lte/dist/js/app.min.js"></script>
<script src="node_modules/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
<script src="node_modules/nprogress/nprogress.js"></script>
<script src="admin/assets/js/jquery.pjax.js"></script>
<script src="admin/assets/js/index.js"></script>
<script src="admin/pages/data/book/index.js"></script>