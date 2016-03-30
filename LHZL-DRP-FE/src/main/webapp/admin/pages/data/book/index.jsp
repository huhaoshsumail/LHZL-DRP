<!DOCTYPE html>
<%@ page contentType="text/html;charset=utf-8" %>
<html lang="zh-CN">
<head>
    <%@include file="../../../common/common_link.jsp" %>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <%@include file="../../../common/common_header.jsp" %>
    <%@include file="../../../common/common_sidebar.jsp" %>

    <div class="content-wrapper" id="pjax-content">
        <section class="content-header">
            <h1>
                字典
                <small>数据</small>
            </h1>
            <ol class="breadcrumb">
                <li class="active"><a href="javascript:;"><i class="fa fa-book"></i> 字典</a></li>
            </ol>
        </section>
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">代码</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <table id="codeTbale" class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th>代码</th>
                                    <th>描述</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>abc</td>
                                    <td>哈哈哈</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">值</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <table id="valueTbale" class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th>值</th>
                                    <th>描述</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>a</td>
                                    <td>嘿嘿嘿</td>
                                </tr>
                                </tbody>
                            </table>
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
<%@include file="../../../common/common_script.jsp" %>
</body>
</html>
