<!DOCTYPE html>
<%@ page contentType="text/html;charset=utf-8" %>
<html lang="zh-CN">
<head>
    <%@include file="../../common/common.jsp" %>
    <script src="admin/pages/line/lines.js"></script>
    <style>
        .form
        {
            width: 100%;
            clear: both;
            border: 1px solid #c9dae4;
        }
        .form tr th
        {
            color: #0d487b;
            line-height: 28px;
            border-bottom: 1px solid #9cb6cf;
            border-top: 1px solid #e9edf3;
            font-weight: normal;
            text-shadow: #e6ecf3 1px 1px 0px;
            padding-left: 5px;
            padding-right: 5px;
        }
        .form tr td
        {
            border-bottom: 1px solid #e9e9e9;
            padding-bottom: 5px;
            padding-top: 5px;
            color: #444;
            border-top: 1px solid #FFFFFF;
            padding-left: 15px;
            padding-right: 5px;
            word-break: break-all;
        }
        td input[type="text"]
        {
            width: 200px;
        }
        #btns
        {
            padding: 15px;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
        &times;
    </button>
    <h4 class="modal-title" id="myModalLabel">新增线路</h4>
</div>

<div class="modal-body no-padding">
    <ul id="myTab" class="nav nav-tabs">
        <li class="active">
            <a href="#base" data-toggle="tab">基本信息</a>
        </li>
        <li><a href="#shuttle" data-toggle="tab">接送规则</a></li>
        <li><a href="#extend" data-toggle="tab">扩展规则</a></li>
        <li><a href="#contact " data-toggle="tab">联系方式</a></li>
    </ul>
    <form>
        <div id="myTabContent" class="tab-content">
            <div class="tab-pane fade in active" id="base">
                <table class="form">
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
                        <div id="">

                        </div>
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
                        <td>关键字</td>
                        <td>
                            <select>
                                <option>--请选择--</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>天数</td>
                        <td><input type="text" id="days" name="days"></td>
                    </tr>
                    <tr>
                        <td>住宿天数</td>
                        <td><input type="text" id="hotel_days" name="hotelDays"></td>
                    </tr>
                    <tr>
                        <td>应急电话</td>
                        <td><input type="text" id="tel" name="tel"></td>
                    </tr>
                    <tr>
                        <td>最小成团人数</td>
                        <td><input type="text" id="min" name="min"></td>
                    </tr>
                    <tr>
                        <td>下单需确认</td>
                        <td>
                            <select>
                                <option>--请选择--</option>
                            </select>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="tab-pane fade" id="shuttle">
                <form id="codeForm">
                    <div class="col-md-4">
                        <div class="input-group">
                            <span class="input-group-addon">代码</span>
                            <input name="code" type="text" class="form-control" placeholder="code">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="input-group">
                            <span class="input-group-addon">描述</span>
                            <input name="description" type="text" class="form-control"
                                   placeholder="description">
                        </div>
                    </div>
                </form>
            </div>
            <div class="tab-pane fade" id="extend">
                <form class="form-inline">
                    <div class="form-group">
                        <label class="sr-only">Email</label>
                        <p class="form-control-static">email@example.com</p>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword2" class="sr-only">Password</label>
                        <input type="password" class="form-control" id="inputPassword2" placeholder="Password">
                    </div>
                    <button type="submit" class="btn btn-default">Confirm identity</button>
                </form>
            </div>
            <div class="tab-pane fade" id="contact">

            </div>
            <div id="btns">
                <button id="saveBtn">保存</button>
                <button type="button" data-dismiss="modal" aria-hidden="true">关闭</button>
            </div>
        </div>
    </form>
</div>

</body>
</html>
