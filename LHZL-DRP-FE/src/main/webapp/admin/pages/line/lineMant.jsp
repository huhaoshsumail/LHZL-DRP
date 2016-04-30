<!DOCTYPE html>
<%@ page contentType="text/html;charset=utf-8" %>
<html lang="zh-CN">
<head>
    <%@include file="../../common/common.jsp" %>
</head>
<body>

<ul id="myTab" class="nav nav-tabs">
    <li class="active">
        <a href="#base" data-toggle="tab">基本信息</a>
    </li>
    <li><a href="#shuttle" data-toggle="tab">接送规则</a></li>
    <li><a href="#extend" data-toggle="tab">扩展规则</a></li>
    <li><a href="#contact " data-toggle="tab">联系方式</a></li>
</ul>
<div id="myTabContent" class="tab-content">
    <div class="tab-pane fade in active" id="base">
        <form>
            <table>
                <tr>
                    <td>线路类型</td>
                    <td>短线</td>
                </tr>
                <tr>
                    <td>系统编号</td>
                    <td>自动生成</td>
                </tr>
                <tr>
                    <td>自定义编号</td>
                    <td><input type="text" id="sysNo" name="sysNo"></td>
                </tr>
                <tr>
                    <td>站点</td>
                    <td><button id="start_station">选择</button></td>
                </tr>
                <tr>
                    <td>目的地</td>
                    <td><button id="end_station">选择</button></td>
                </tr>
                <tr>
                    <td>主标题</td>
                    <td><input type="text" id="title" name="title"></td>
                </tr>
                <tr>
                    <td>副标题</td>
                    <td><input type="text" id="sub_title" name="sub_title"></td>
                </tr>
                <tr>
                    <td>描述</td>
                    <td><textarea rows="5" cols="60" id="desc" name="desc"></textarea></td>
                </tr>
                <tr>
                    <td>线路主题</td>
                    <td>
                        <input type="checkbox" name="theme">山水景观
                        <input type="checkbox" name="theme">田园度假
                        <input type="checkbox" name="theme">民俗文化
                        <input type="checkbox" name="theme">都市观光
                        <input type="checkbox" name="theme">夕阳红
                    </td>
                </tr>
                <tr>
                    <td>副标题</td>
                    <td><input type="text" id="sub_title" name="sub_title"></td>
                </tr>

            </table>
        </form>
    </div>
    <div class="tab-pane fade" id="shuttle">
        <form class="form-horizontal">
            <fieldset>
                <legend>Input sizes</legend>

                <div class="form-group">
                    <label class="control-label col-md-2">Extra Small Input</label>
                    <div class="col-md-10">
                        <input class="form-control input-xs" placeholder=".input-xs" type="text">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-2">Small Input</label>
                    <div class="col-md-10">
                        <input class="form-control input-sm" placeholder=".input-sm" type="text">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-2">Default Input</label>
                    <div class="col-md-10">
                        <input class="form-control" placeholder="Default input" type="text">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-2">Large Input</label>
                    <div class="col-md-10">
                        <input class="form-control input-lg" placeholder=".input-lg" type="text">
                    </div>
                </div>

            </fieldset>
        </form>
    </div>
    <div class="tab-pane fade" id="extend">

    </div>
    <div class="tab-pane fade" id="contact">

    </div>
</div>
</body>
</html>
