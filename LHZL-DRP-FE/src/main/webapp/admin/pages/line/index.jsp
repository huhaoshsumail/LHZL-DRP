<!DOCTYPE html>
<%@ page contentType="text/html;charset=utf-8" %>
<html lang="zh-CN">
<head>
    <%@include file="../../common/common.jsp" %>
    <script src="admin/pages/line/lines.js"></script>
    <style>
        .modal-content
        {
            width: 800px;
            height: 700px;
            overflow: auto;
            -webkit-background-clip: content;
            border: 6px solid rgba(0,0,0,.3);
            border-radius: 5px;
            box-shadow: none;
        }
    </style>
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
    <input id="btntext" type="button" value="添加文本组件" data-toggle="modal" data-target="#myModal"  href=""/>
    <!-- Modal -->
    <div class="modal hide fade" id="myModal" tabindex="-1" role="dialog">
        <div class="modal-header"><button class="close" type="button" data-dismiss="modal">×</button>
            <h3 id="myModalLabel">Modal header</h3>
        </div>
        <div class="modal-body"></div>
    </div>
    <%@include file="../../common/common_footer.jsp" %>
    <%@include file="../../common/common_control.jsp" %>
</div>
<!-- 弹出框 -->
<div class="modal fade" id="addLineDiv" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content"></div>
    </div>
</div>
</body>
</html>
