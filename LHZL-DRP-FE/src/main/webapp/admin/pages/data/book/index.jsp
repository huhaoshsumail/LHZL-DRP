<!DOCTYPE html>
<%@ page contentType="text/html;charset=utf-8" %>
<html lang="zh-CN">
<head>
    <%@include file="../../../common/common.jsp" %>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <%@include file="../../../common/common_header.jsp" %>
    <%@include file="../../../common/common_sidebar.jsp" %>

    <div class="content-wrapper" id="pjax-content">
        <script>
            $(function () {
                initDataBook();
            });
        </script>
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
                            <div class="btn-group box-header-btns" role="group" aria-label="操作">
                                <button id="insertCode" type="button" class="btn btn-primary"><i
                                        class="fa fa-edit"></i><span>新增</span></button>
                                <button id="updateCode" type="button" class="btn btn-primary"><i
                                        class="fa fa-repeat"></i><span>修改</span></button>
                                <button id="deleteCode" type="button" class="btn btn-primary"><i
                                        class="fa fa-remove"></i><span>删除</span></button>
                            </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div id="codeTable"></div>
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
                            <div id="valueTable"></div>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.col -->
            </div>
        </section>
    </div>

    <div class="modal fade" id="codeModal" tabindex="-1" role="dialog" aria-labelledby="codeFormLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="codeFormLabel">字典代码</h4>
                </div>
                <div class="modal-body">
                    <form>
                        <input id="codeid" name="codeid" hidden readonly>
                        <div class="form-group">
                            <label for="code">代码</label>
                            <input type="text" id="code" name="code" class="form-control" placeholder="代码">
                        </div>
                        <div class="form-group">
                            <label for="description">描述</label>
                            <input type="text" id="description" name="description" class="form-control"
                                   placeholder="描述">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><span class="btn-span">关闭</span>
                    </button>
                    <button id="saveCode" type="button" class="btn btn-primary"><span class="btn-span">保存</span>
                    </button>
                </div>
            </div>
        </div>
    </div>

    <%@include file="../../../common/common_footer.jsp" %>
    <%@include file="../../../common/common_control.jsp" %>
</div>
</body>
</html>
