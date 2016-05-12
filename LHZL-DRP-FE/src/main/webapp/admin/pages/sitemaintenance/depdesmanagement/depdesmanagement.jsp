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
        <section class="content-header">
            <h1>
                站点管理
                <small>出发/目的地管理</small>
            </h1>
            <ol class="breadcrumb">
                <li class="active"><a href="javascript:;"><i class="fa fa-book"></i>出发/目的地管理</a></li>
            </ol>
        </section>
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">父站点</h3>
                            <div class="btn-group box-header-btns" role="group" aria-label="操作">
                                <button id="queryCode" type="button" class="btn btn-primary"><i
                                        class="fa fa-search"></i><span>查询</span></button>
                                <button id="insertCode" type="button" class="btn btn-primary"><i
                                        class="fa fa-edit"></i><span>新增</span></button>
                                <button id="updateCode" type="button" class="btn btn-primary"><i
                                        class="fa fa-repeat"></i><span>修改</span></button>
                                <button id="deleteCode" type="button" class="btn btn-primary"><i
                                        class="fa fa-remove"></i><span>删除</span></button>
                            </div>
                            <hr>
                            <%--<form id="codeForm">--%>
                                <%--<div class="col-md-4">--%>
                                    <%--<div class="input-group">--%>
                                        <%--<span class="input-group-addon">代码</span>--%>
                                        <%--<input name="code" type="text" class="form-control" placeholder="code">--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<div class="col-md-4">--%>
                                    <%--<div class="input-group">--%>
                                        <%--<span class="input-group-addon">描述</span>--%>
                                        <%--<input name="description" type="text" class="form-control"--%>
                                               <%--placeholder="description">--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</form>--%>
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
                            <h3 class="box-title">子站点</h3>
                            <div class="btn-group box-header-btns" role="group" aria-label="操作">
                                <button id="insertValue" type="button" class="btn btn-primary"><i
                                        class="fa fa-edit"></i><span>新增</span></button>
                                <button id="updateValue" type="button" class="btn btn-primary"><i
                                        class="fa fa-repeat"></i><span>修改</span></button>
                                <button id="deleteValue" type="button" class="btn btn-primary"><i
                                        class="fa fa-remove"></i><span>删除</span></button>
                            </div>
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
        <div class="modal fade" id="codeModal" tabindex="-1" role="dialog" aria-labelledby="codeFormLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="codeFormLabel">出发/目的的父站点管理</h4>
                    </div>
                    <div class="modal-body">
                        <form>
                            <input name="id" hidden readonly>
                            <div class="form-group">
                                <label>站点名称</label>
                                <input type="text" name="stationname" class="form-control" placeholder="站点名称">
                            </div>
                            <div class="form-group">
                                <label>是否启用</label>
                                <select id="status" class="form-control">
                                    <option value=''>-- 请选择 --</option>
                                    <option value="Y">启用</option>
                                    <option value="N">不启用</option>
                                </select>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal"><span
                                class="btn-span">关闭</span>
                        </button>
                        <button id="saveCode" type="button" class="btn btn-primary"><span class="btn-span">保存</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="valueModal" tabindex="-1" role="dialog" aria-labelledby="codeFormLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="valueFormLabel">出发/目的的子站点管理</h4>
                    </div>
                    <div class="modal-body">
                        <form>
                            <input name="id" hidden readonly>
                            <input name="stationpid" hidden readonly>
                            <div class="form-group">
                                <label>站点名称</label>
                                <input type="text" name="stationname" class="form-control" placeholder="站点名称">
                            </div>
                            <div class="form-group">
                                <label>是否启用</label>
                                <select id="sonstatus" class="form-control">
                                    <option value=''>-- 请选择 --</option>
                                    <option value="Y">启用</option>
                                    <option value="N">不启用</option>
                                </select>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal"><span
                                class="btn-span">关闭</span>
                        </button>
                        <button id="saveValue" type="button" class="btn btn-primary"><span class="btn-span">保存</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <script> initDataDepAndDes();</script>
    </div>

    <%@include file="../../../common/common_footer.jsp" %>
    <%@include file="../../../common/common_control.jsp" %>
</div>
</body>
</html>
