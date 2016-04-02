<%--
  Created by IntelliJ IDEA.
  User: huhaosumail
  Date: 16/4/2
  Time: 下午1:00
  To change this template use File | Settings | File Templates.
  站点管理  住宿类型维护
--%>
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
                initDataAccomoationType();
            });
        </script>
        <section class="content-header">
            <h1>
                住宿类型
                <small>维护</small>
            </h1>
            <%--<ol class="breadcrumb">--%>
                <%--<li class="active"><a href="javascript:;"><i class="fa fa-book"></i> 字典</a></li>--%>
            <%--</ol>--%>
        </section>
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">住宿类型维护</h3>
                        </div>
                        <div class="box-body">
                            <div id="codeTable"></div>
                        </div>
                    </div>

                </div>
            </div>

        </section>
    </div>

    <%@include file="../../../common/common_footer.jsp" %>
    <%@include file="../../../common/common_control.jsp" %>
</div>
</body>
</html>

