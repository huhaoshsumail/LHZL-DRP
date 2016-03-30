<%@ page contentType="text/html;charset=utf-8" %>

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
            <li><a href="admin/index.jsp"><i class="fa fa-dashboard"></i><span>主页</span></a></li>
            <li class="treeview">
                <a href="javascript:;">
                    <i class="fa fa-database"></i><span>基础数据</span><i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="admin/pages/data/book/index.jsp"><i class="fa fa-book"></i><span>数据字典</span></a></li>
                    <li><a href="admin/pages/data/location/index.jsp"><i class="fa fa-map-pin"></i><span>地点</span></a></li>
                </ul>
            </li>
            <li><a href="admin/pages/line/index.jsp"><i class="fa fa-map"></i><span>线路</span></a></li>
            <li class="treeview">
                <a href="javascript:;">
                    <i class="fa fa-th-list"></i><span>站点管理</span><i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="admin/index.jsp"><i class="fa fa-map-signs"></i><span>出发/目的地管理</span></a></li>
                    <li><a href="admin/index.jsp"><i class="fa fa-bus"></i><span>接送规则维护</span></a></li>
                    <li><a href="admin/index.jsp"><i class="fa fa-long-arrow-right"></i><span>车次配置维护</span></a></li>
                    <li><a href="admin/index.jsp"><i class="fa fa-hotel"></i><span>住宿类型维护</span></a></li>
                    <li><a href="admin/index.jsp"><i class="fa fa-file-word-o"></i><span>线路关键字维护</span></a></li>
                    <li><a href="admin/index.jsp"><i class="fa fa-paint-brush"></i><span>线路主题</span></a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="javascript:;">
                    <i class="fa fa-users"></i><span>团体管理</span><i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="admin/index.jsp"><i class="fa fa-th-large"></i><span>游客团体管理</span></a></li>
                    <li><a href="admin/index.jsp"><i class="fa fa-cloud-upload"></i><span>游客导入功能</span></a></li>
                </ul>
            </li>
            <li><a href="admin/index.jsp"><i class="fa fa-th"></i><span>游客分配座位</span></a></li>
            <li><a href="admin/index.jsp"><i class="fa fa-file-o"></i><span>生成订单</span></a></li>
            <li><a href="admin/index.jsp"><i class="fa fa-file-text-o"></i><span>订单详情</span></a></li>
            <li class="treeview">
                <a href="javascript:;">
                    <i class="fa fa-cubes"></i><span>供应商管理</span><i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="admin/index.jsp"><i class="fa fa-cube"></i><span>供应商管理</span></a></li>
                    <li><a href="admin/index.jsp"><i class="fa fa-black-tie"></i><span>供应商子账户管理</span></a></li>
                    <li><a href="admin/index.jsp"><i class="fa fa-lock"></i><span>供应商子账户权限分配</span></a></li>

                </ul>
            </li>
            <li class="treeview">
                <a href="javascript:;">
                    <i class="fa fa-sitemap"></i><span>分销商管理</span><i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="admin/index.jsp"><i class="fa fa-share-alt"></i><span>分销商管理</span></a></li>
                    <li><a href="admin/index.jsp"><i class="fa fa-black-tie"></i><span>分销商子账户管理</span></a></li>
                    <li><a href="admin/index.jsp"><i class="fa fa-lock"></i><span>分销商子账户权限分配</span></a></li>

                </ul>
            </li>
            <li class="treeview">
                <a href="javascript:;">
                    <i class="fa fa-files-o"></i><span>订单管理</span><i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="admin/index.jsp"><i class="fa fa-file-archive-o"></i><span>订单查询</span></a></li>
                    <li><a href="admin/index.jsp"><i class="fa fa-user"></i><span>订单乘客管理功能</span></a></li>
                    <li><a href="admin/index.jsp"><i class="fa fa-th"></i><span>订单选座管理功能</span></a></li>
                </ul>
            </li>
            <li><a href="admin/index.jsp"><i class="fa fa-search"></i><span>账单查询</span></a></li>
            <li><a href="admin/index.jsp"><i class="fa fa-cloud-download"></i><span>账单导出</span></a></li>
            <li><a href="admin/index.jsp"><i class="fa fa-copy"></i><span>线路复制</span></a></li>
            <li><a href="admin/index.jsp"><i class="fa fa-repeat"></i><span>产品价格覆盖</span></a></li>
            <li><a href="admin/index.jsp"><i class="fa fa-rmb"></i><span>产品添加分类价格</span></a></li>

        </ul>
    </section>
    <!-- /.sidebar -->
</aside>