<!DOCTYPE html>
<%@ page contentType="text/html;charset=utf-8" %>
<html lang="zh-CN">
<head>
    <%@include file="../../../common/common.jsp" %>
    <script src="admin/pages/rolepmsn/pmsns/pmsns.js"></script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <%@include file="../../../common/common_header.jsp" %>
    <%@include file="../../../common/common_sidebar.jsp" %>

    <div class="content-wrapper" id="pjax-content">
        <script>
            $(function () {
                initPmsnData();
                $('.pmsnForm').hide();
            });
        </script>
        <section class="content-header">
            <h1>
                角色权限
                <small>权限管理</small>
            </h1>
            <ol class="breadcrumb">
                <li class="active"><a href="javascript:;"><i class="fa fa-user-md"></i>权限管理</a></li>
            </ol>
        </section>
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">权限</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div id="pmsnsTable"></div>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                    <div class="box pmsnForm">
                        <div class="box-body">
                            <div id="valueTable">
                                <form id="pmsnForm" class="form-inline">
                                    <input type="hidden" class="form-control" id="id" name="id">
                                    <div class="form-group">
                                        <label class="sr-only">权限名称</label>
                                        <input type="text" class="form-control" id="pmsnname" name="pmsnname" placeholder="权限名称">
                                    </div>
                                    <div class="form-group">
                                        <label class="sr-only">操作名称</label>
                                        <input type="text" class="form-control" id="actionname" name="actionname" placeholder="操作名称">
                                    </div>
                                    <div class="form-group">
                                        <label class="sr-only">备注</label>
                                        <input type="text" class="form-control" id="remark" name="remark" placeholder="备注">
                                    </div>
                                    <button type="button" id="savePmsnBtn" class="btn btn-default">保存</button>
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
