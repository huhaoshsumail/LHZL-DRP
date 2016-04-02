<!DOCTYPE html>
<%@ page contentType="text/html;charset=utf-8" %>
<html lang="zh-CN">
<head>
    <%@include file="../../../common/common.jsp" %>
    <script src="admin/pages/rolepmsn/roles/roles.js"></script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <%@include file="../../../common/common_header.jsp" %>
    <%@include file="../../../common/common_sidebar.jsp" %>

    <div class="content-wrapper" id="pjax-content">
        <script>
            $(function () {
                initRoleData();
                $('.roleForm').hide();
            });
        </script>
        <section class="content-header">
            <h1>
                角色权限
                <small>角色管理</small>
            </h1>
            <ol class="breadcrumb">
                <li class="active"><a href="javascript:;"><i class="fa fa-user-md"></i>角色管理</a></li>
            </ol>
        </section>
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">角色</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div id="rolesTable"></div>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                    <div class="box roleForm">
                        <div class="box-body">
                            <div id="valueTable">
                                <form id="roleForm" class="form-inline">
                                    <input type="hidden" class="form-control" id="roleid" name="roleid">
                                    <div class="form-group">
                                        <label class="sr-only">角色名称</label>
                                        <input type="text" class="form-control" id="rolename" name="rolename" placeholder="角色名称">
                                    </div>
                                    <div class="form-group">
                                        <label class="sr-only">备注</label>
                                        <input type="text" class="form-control" id="remark" name="remark" placeholder="备注">
                                    </div>
                                    <button type="button" id="saveRoleBtn" class="btn btn-default">保存</button>
                                </form>
                            </div>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.col -->
            </div>
        </section>
    </div>

    <%@include file="../../../common/common_footer.jsp" %>
    <%@include file="../../../common/common_control.jsp" %>
</div>
</body>
</html>
