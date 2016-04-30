<!DOCTYPE html>
<%@ page contentType="text/html;charset=utf-8" %>
<html lang="zh-CN">
<head>
    <%@include file="../../common/common.jsp" %>
    <script src="admin/pages/line/lines.js"></script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <%@include file="../../common/common_header.jsp" %>
    <%@include file="../../common/common_sidebar.jsp" %>

    <div class="content-wrapper" id="pjax-content">
        <script>
            $(function () {
                initLineData();
            });
        </script>
        <section class="content-header">
            <h1>
                线路
                <small>维护</small>
            </h1>
            <ol class="breadcrumb">
                <li class="active"><a href="javascript:;"><i class="fa fa-map"></i> 线路</a></li>
            </ol>
        </section>
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">线路</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div id="lineTable"></div>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.col -->
            </div>
        </section>
    </div>

    <%@include file="../../common/common_footer.jsp" %>
    <%@include file="../../common/common_control.jsp" %>
</div>
</body>
</html>
