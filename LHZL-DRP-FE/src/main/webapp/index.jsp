<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>莲花之旅</title>
    <link href="favicon.ico" rel="shortcut icon">
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
    <link href="assets/css/index.css" rel="stylesheet" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="node_modules/html5shiv/dist/html5shiv.min.js"></script>
    <script src="node_modules/respond.js/dest/respond.min.js"></script>
    <![endif]-->

</head>
<body class="hold-transition skin-blue sidebar-mini">

<div class="wrapper">
    <header class="main-header">
        <!-- Logo -->
        <a href="index.jsp" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>莲</b>+</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>莲花之旅</b>平台</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>

            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- Messages: style can be found in dropdown.less-->
                    <li class="dropdown messages-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-envelope-o"></i>
                            <span class="label label-success">4</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 4 messages</li>
                            <li>
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li><!-- start message -->
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="node_modules/admin-lte/dist/img/user2-160x160.jpg"
                                                     class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                Support Team
                                                <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <!-- end message -->
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="node_modules/admin-lte/dist/img/user3-128x128.jpg"
                                                     class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                AdminLTE Design Team
                                                <small><i class="fa fa-clock-o"></i> 2 hours</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="node_modules/admin-lte/dist/img/user4-128x128.jpg"
                                                     class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                Developers
                                                <small><i class="fa fa-clock-o"></i> Today</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="node_modules/admin-lte/dist/img/user3-128x128.jpg"
                                                     class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                Sales Department
                                                <small><i class="fa fa-clock-o"></i> Yesterday</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="node_modules/admin-lte/dist/img/user4-128x128.jpg"
                                                     class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                Reviewers
                                                <small><i class="fa fa-clock-o"></i> 2 days</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="footer"><a href="#">See All Messages</a></li>
                        </ul>
                    </li>
                    <!-- User Account: style can be found in dropdown.less -->
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="node_modules/admin-lte/dist/img/user2-160x160.jpg" class="user-image"
                                 alt="User Image">
                            <span class="hidden-xs">Alexander Pierce</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="node_modules/admin-lte/dist/img/user2-160x160.jpg" class="img-circle"
                                     alt="User Image">

                                <p>
                                    Alexander Pierce - Web Developer
                                    <small>Member since Nov. 2012</small>
                                </p>
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat">Profile</a>
                                </div>
                                <div class="pull-right">
                                    <a href="#" class="btn btn-default btn-flat">Sign out</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <!-- Control Sidebar Toggle Button -->
                    <li>
                        <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>

    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="node_modules/admin-lte/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>Alexander Pierce</p>
                    <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                </div>
            </div>
            <!-- search form -->
            <form action="#" method="get" class="sidebar-form">
                <div class="input-group">
                    <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
                </div>
            </form>
            <!-- /.search form -->
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu">
                <li class="header">莲花之旅分销系统</li>
                <li class="active" onclick="findPage('home')"><a href="javascript:;"><i class="fa fa-home"></i><span>首页</span></a>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-th-list"></i>
                        <span>功能</span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li onclick="findPage('demo')"><a href="javascript:;"><i class="fa fa-circle-o"></i>功能项</a></li>
                    </ul>
                </li>
            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
    </div>
    <!-- /.content-wrapper -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 1.0.0
        </div>
        <strong>Copyright &copy; 2016-2017 <a href="https://github.com/huhaoshsumail/LHZL-DRP"
                                              target="_blank">LHZL-DRP</a>.</strong> All rights
        reserved.
    </footer>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
            <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
            <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
            <!-- Home tab content -->
            <div class="tab-pane" id="control-sidebar-home-tab"></div>
            <!-- Settings tab content -->
            <div class="tab-pane" id="control-sidebar-settings-tab"></div>
            <!-- /.tab-pane -->
        </div>
    </aside>
    <!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
         immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
</div>

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
<script src="assets/js/index.js"></script>
</body>
</html>
