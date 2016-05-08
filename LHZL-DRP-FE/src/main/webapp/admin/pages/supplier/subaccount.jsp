<%--
  Created by IntelliJ IDEA.
  User: huhaosumail
  Date: 16/4/2
  Time: 下午1:00
  To change this template use File | Settings | File Templates.
  供应商子账户管理
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=utf-8" %>
<html lang="zh-CN">
<head>
    <%@include file="../../common/common.jsp" %>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <%@include file="../../common/common_header.jsp" %>
    <%@include file="../../common/common_sidebar.jsp" %>

    <div class="content-wrapper" id="pjax-content">
        <section class="content-header">
            <h1>
                供应商
                <small>子账户管理</small>
            </h1>
        </section>
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">子账户管理</h3>
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
                        <h4 class="modal-title" id="codeFormLabel">供应商子账户</h4>
                    </div>
                    <div class="modal-body">
                        <form>
                            <input name="id" hidden readonly>
                            <div class="form-group">
                                <label>姓名</label>
                                <input type="text" name="username" class="form-control" placeholder="姓名">
                            </div>
                            <div class="form-group">
                                <label>电话</label>
                                <input type="text" name="mobile" class="form-control"
                                       placeholder="电话">
                            </div>
                            <div class="form-group">
                                <label>身份证</label>
                                <input type="text" name="idcard" class="form-control"
                                       placeholder="身份证">
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal"><span
                                class="btn-span">关闭</span>
                        </button>
                        <button id="saveSupplier" type="button" class="btn btn-primary"><span class="btn-span">保存</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <script> initDataOper();</script>
    </div>
    <%@include file="../../common/common_footer.jsp" %>
    <%@include file="../../common/common_control.jsp" %>
</div>
</body>
</html>
